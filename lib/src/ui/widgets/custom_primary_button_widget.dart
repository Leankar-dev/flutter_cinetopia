import 'package:flutter/material.dart';

class CustomPrimaryButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final IconData? iconData;
  final Icon? icon;
  final double? iconSize;

  const CustomPrimaryButtonWidget({
    super.key,
    required this.onTap,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    this.iconData,
    this.icon,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            const SizedBox(width: 10),
            Icon(iconData, color: textColor, size: iconSize),
          ],
        ),
      ),
    );
  }
}
