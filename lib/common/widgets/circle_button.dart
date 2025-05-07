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
      customBorder: const CircleBorder(),
      child: Container(
        width: radius * 2,
        height: radius * 2,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: bgColor ?? Colors.transparent,
          border: Border.all(
            color: borderColor ?? Colors.transparent,
            width: 3,
          ),
        ),
        child: Center(child: child),
      ),
    );
  }
}
