import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final Color? bgColor;
  final double radius;
  final Widget child;
  final Color? borderColor;
  final VoidCallback onPressed;

  const CircleButton({
    super.key,
    this.bgColor,
    this.borderColor,
    required this.radius,
    required this.child,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      customBorder: CircleBorder(
        side: BorderSide(color: borderColor ?? Colors.transparent, width: 3),
      ),
      child: CircleAvatar(
        backgroundColor: bgColor ?? Colors.transparent,
        radius: radius,
        child: child,
      ),
    );
  }
}
