import 'package:flutter/material.dart';

import '../utils/colorz.dart';
import 'custom_icon.dart';

class CustomSquareIconButton extends StatelessWidget {
  const CustomSquareIconButton({
    super.key,
    this.icon,
    this.iconColor,
    this.backgroundColor,
    this.onPressed,
    this.outlinedButton = false,
    this.iconSize,
    this.scale,
    this.text,
    this.textStyle,
    this.child,
  }) : assert(child != null || icon != null);
  final Function()? onPressed;
  final IconData? icon;
  final Color? iconColor;
  final Color? backgroundColor;
  final bool outlinedButton;
  final double? iconSize;
  final double? scale;
  final String? text;
  final TextStyle? textStyle;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: scale ?? 1,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          iconSize: MaterialStateProperty.all(iconSize),
          shape: MaterialStateProperty.all(
            outlinedButton
                ? RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: const BorderSide(
                      color: Colorz.main,
                    ),
                  )
                : RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: const BorderSide(
                      color: Colorz.main,
                    ),
                  ),
          ),
          minimumSize: MaterialStateProperty.all(const Size.square(60)),
          backgroundColor: MaterialStateProperty.all(
            backgroundColor ??
                (outlinedButton ? Colorz.screenBackground : Colorz.main),
          ),

        ),
        child: child ??
            CustomIcon(
              icon,
              color: iconColor ??
                  (outlinedButton ? Colorz.textPrimary : Colorz.textBlack),
              size: iconSize,
            ),
      ),
    );
  }
}
