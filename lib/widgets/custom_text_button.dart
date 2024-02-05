import 'package:flutter/material.dart';
import '../utils/colorz.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    this.onPressed,
    required this.text,
    this.minWidth,
    this.textColor,
    this.backgroundColor,
    this.gradient,
    this.fitted = false,
    this.isGradient = false,
    this.isUnderlineText = false,
    this.padding,
    this.icon,
    this.width,
  });

  final Function()? onPressed;
  final String text;
  final double? minWidth;
  final double? width;
  final Color? textColor;
  final Color? backgroundColor;
  final Gradient? gradient;
  final bool fitted;
  final bool isGradient;
  final bool isUnderlineText;
  final EdgeInsetsGeometry? padding;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        gradient: gradient ??
            (backgroundColor != null || !isGradient
                ? null
                : const LinearGradient(
                    colors: [
                      Colorz.buttonGradientOne,
                      Colorz.buttonGradientTwo,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
        color: backgroundColor ?? Colorz.main,
      ),
      child: MaterialButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        padding: padding ??
            const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 12.0,
            ),
        height: 40.0,
        minWidth: fitted ? null : minWidth ?? double.infinity,
        onPressed: onPressed,
        child: icon != null
            ? SizedBox(
                width: fitted ? null : width ?? double.infinity,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (icon != null) icon!,
                    SizedBox(
                      width: icon != null ? 10 : 0,
                    ),
                    FittedBox(
                      child: Text(
                        text,
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              color: textColor ?? Colors.black,
                              fontWeight: FontWeight.w600,
                              decoration: isUnderlineText
                                  ? TextDecoration.underline
                                  : null,
                              decorationColor: textColor ?? Colors.black,
                            ),
                      ),
                    ),
                  ],
                ),
              ):FittedBox(
                  child: Text(
                  text,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: textColor ?? Colors.black,
                        fontWeight: FontWeight.w600,
                        decoration: isUnderlineText ? TextDecoration.underline : null,
                        decorationColor: textColor ?? Colors.black,
                      ),
                   ),
                ),
      ),
    );
  }
}
