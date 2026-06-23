import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String? hintText;
  final bool obscureText;
  final Color hintTextColor;
  final double hintTextSize;
  final Color fillColor;
  final BorderSide borderSide;
  final double textFieldWidth;

  const CustomTextfield({
    super.key,
    this.hintText,
    this.obscureText = false,
    this.hintTextColor = Colors.grey,
    this.hintTextSize = 16,
    this.fillColor = Colors.white,
    this.borderSide = BorderSide.none,
    this.textFieldWidth = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: textFieldWidth,
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderSide: borderSide),
          fillColor: fillColor,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: hintTextColor, fontSize: hintTextSize),
        ),
      ),
    );
  }
}
