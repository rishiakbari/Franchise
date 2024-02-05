import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/colorz.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.labelText,
    this.keyboardType,
    this.obscureText,
    this.maxLine,
    this.suffixIcon,
    this.prefixIcon,
    this.controller,
    this.focusNode,
    this.inputFormatters,
    this.readOnly = false,
    this.onTap,
    this.onChanged,
    this.outLine = false,
    this.fillColor,
    this.height, 
    this.validator, 
    this.cursorHeight,
  });

  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final bool outLine;
  final int? maxLine;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final bool readOnly;
  final Function()? onTap;
  final Function(String)? onChanged;
  final Color? fillColor;
  final double? height;
  final String? Function(String?)? validator;
  final double? cursorHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 45,
      //  decoration: BoxDecoration(
      //   border: Border.all(color: Colorz.main, width: 1),
      //   borderRadius:BorderRadius.circular(5), 
      //  ),
      margin: const EdgeInsets.symmetric(
        vertical: 7.0,
      ),
      child: TextFormField(
        cursorHeight: cursorHeight ?? 25.0,
        controller: controller,
        focusNode: focusNode,
        obscureText: obscureText ?? false,
        maxLines: maxLine ?? 1,
        keyboardType: keyboardType,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          // isDense: true, 
          contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Colorz.textSecondary,
              fontSize: 14
              ),
          labelText: labelText,
          labelStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Colorz.textSecondary,
              ),
          border: outLine
              ? Theme.of(context).inputDecorationTheme.border
              : OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    color: Colorz.main)
                ),
          enabledBorder: outLine 
              ? Theme.of(context).inputDecorationTheme.border
              : OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    color: Colorz.main)
                ),
          focusedBorder: outLine
              ? Theme.of(context).inputDecorationTheme.border
              : OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    color: Colorz.main)
                ),
          fillColor: fillColor ?? Colorz.textFormFieldBackground,
          filled: outLine ? false : true,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
        ),
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.normal,
              color: Colorz.textSecondary,
            ),
        readOnly: readOnly,
        onTap: onTap,
        onChanged: onChanged,
        validator: validator,
        onTapOutside: (event) {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        },
      ),
    );
  }
}