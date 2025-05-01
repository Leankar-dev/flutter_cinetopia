import 'package:flutter/material.dart';

class CustomPrimaryButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final Color backgroundColor;
  final IconData? iconData;
  final Icon? icon;
  final double? iconSize;

  const CustomPrimaryButtonWidget({
    super.key,
    required this.onTap,
    required this.text,
    required this.textColor,
    required this.fontSize,
    required this.fontWeight,
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize:
              MainAxisSize.min, // para o botão não ocupar toda a largura
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: fontWeight,
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
