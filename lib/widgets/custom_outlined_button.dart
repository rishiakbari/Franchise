import 'package:flutter/material.dart';

import '../utils/colorz.dart';
import 'custom_icon.dart';

class CustomOutlinedButton extends StatelessWidget {
  CustomOutlinedButton({
    super.key,
    this.onPressed,
    this.text,
    this.size,
    this.textColor,
    this.backgroundColor,
    this.borderRadius = 0,
    this.textStyle,
    this.child,
    this.icon,
    this.padding,
  }) : assert((text != null && text.isNotEmpty) || icon != null);

  final Function()? onPressed;
  final String? text;
  final EdgeInsets? padding;
  final Size? size;
  final Color? textColor;
  final Color? backgroundColor;
  final double borderRadius;
  final TextStyle? textStyle;
  final Widget? child;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        foregroundColor:
            MaterialStateProperty.all(textColor ?? Colorz.textPrimary),
        backgroundColor: MaterialStateProperty.all(
          backgroundColor ?? Colors.transparent,
        ),
        minimumSize: MaterialStateProperty.all(size),
        textStyle: MaterialStateProperty.all(
          textStyle ??
              Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            side: const BorderSide(
              color: Colorz.main,
            ),
            borderRadius: borderRadius > 0
                ? BorderRadius.all(Radius.circular(borderRadius))
                : BorderRadius.zero,
          ),
        ),
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) CustomIcon(icon),
            if (icon != null && text != null)
              const SizedBox(
                width: 10,
              ),
            if (text != null) Text(text!),
          ],
        ),
      ),
    );
  }
}
