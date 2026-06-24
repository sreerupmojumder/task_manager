import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String title;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  const CustomText({
    super.key,
    required this.title,
    this.color = Colors.black,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
