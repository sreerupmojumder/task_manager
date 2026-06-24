import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Color bgColor;
  final Color textColor;
  final double titleTextSize;

  const CustomFilledButton({
    super.key,
    required this.title,
    required this.onTap,
    this.bgColor = Colors.transparent,
    this.textColor = Colors.black,
    this.titleTextSize = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: TextButton(
        onPressed: onTap,
        child: Text(title, style: TextStyle(color: textColor)),
      ),
    );
  }
}
