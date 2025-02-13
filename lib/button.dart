import 'package:flutter/material.dart';

enum ButtonVariant { solid, outline, destructive }

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final ButtonVariant variant;
  final double? width;
  final double? height;
  final Color? backgroundColor;

  final BorderSide? borderSide;
  final BorderRadius? borderRadius;
  final bool? isDisabled;
  final TextStyle? textStyle;

  const Button({
    Key? key,
    required this.text,
    required this.onPressed,
    this.variant = ButtonVariant.solid,
    this.width,
    this.height,
    this.backgroundColor,
    this.borderSide,
    this.borderRadius,
    this.isDisabled = false,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Colors.transparent;
    BorderSide borderSide = BorderSide(
      color: Colors.black,
      width: 1,
    );
    BorderRadius borderRadius = BorderRadius.circular(8);
    TextStyle textStyle = TextStyle();
    switch (variant) {
      case ButtonVariant.outline:
        backgroundColor = this.backgroundColor ?? Colors.white;
        textStyle = this.textStyle ?? TextStyle(color: Colors.black);
        borderSide = this.borderSide ?? borderSide;
        borderRadius = this.borderRadius ?? borderRadius;
        break;
      case ButtonVariant.solid:
        backgroundColor = this.backgroundColor ?? Colors.black;
        textStyle = this.textStyle ?? TextStyle(color: Colors.white);
        borderRadius = this.borderRadius ?? borderRadius;
        break;
      case ButtonVariant.destructive:
        backgroundColor = Colors.red;
        textStyle = this.textStyle ?? TextStyle(color: Colors.white);
        borderRadius = this.borderRadius ?? borderRadius;
        break;
      default:
        backgroundColor = Colors.green;
        textStyle = this.textStyle ?? TextStyle(color: Colors.white);
        borderRadius = this.borderRadius ?? borderRadius;
        break;
    }
    return InkWell(
      onTap: isDisabled == true ? null : onPressed,
      child: Container(
        width: width ?? 100,
        height: height ?? 40,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: variant == ButtonVariant.outline
              ? Border.all(
                  color: borderSide.color,
                  width: borderSide.width,
                  style: borderSide.style,
                  strokeAlign: borderSide.strokeAlign)
              : null,
          borderRadius: borderRadius,
        ),
        child: Center(
          child: Text(
            text,
            style: textStyle, // Use the textStyle directly
          ),
        ),
      ),
    );
  }
}
