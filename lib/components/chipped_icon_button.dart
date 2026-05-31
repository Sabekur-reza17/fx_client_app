import 'package:flutter/material.dart';

class ChippedIconButton extends StatelessWidget {
  const ChippedIconButton({
    super.key,
    required this.backgroundColor,
    required this.iconColor,
    required this.icon,
    required this.onPressed,
    this.size = 40,
    this.iconSize = 20,
  });

  final Color backgroundColor;
  final Color iconColor;
  final IconData icon;
  final VoidCallback onPressed;
  final double size;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Material(
        color: backgroundColor,
        shape: const CircleBorder(),
        child: InkWell(
          customBorder: const CircleBorder(),
          onTap: onPressed,
          child: Center(
            child: Icon(icon, color: iconColor, size: iconSize),
          ),
        ),
      ),
    );
  }
}

