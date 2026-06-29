import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String? labelText;
  final bool obscureText;
  final Color hintTextColor;
  final double hintTextSize;
  final Color fillColor;
  final BorderSide borderSide;
  final double textFieldWidth;
  final int maxLine;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator; 

  const CustomTextfield({
    super.key,
    this.labelText,
    this.obscureText = false,
    this.hintTextColor = Colors.grey,
    this.hintTextSize = 16,
    this.fillColor = Colors.white,
    this.borderSide = BorderSide.none,
    this.textFieldWidth = double.infinity,
    this.maxLine = 1,
    this.keyboardType = TextInputType.text,
    this.controller, this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: textFieldWidth,
      child: TextFormField(
        maxLines: maxLine,
        obscureText: obscureText,
        keyboardType: keyboardType,

        decoration: InputDecoration(
          border: OutlineInputBorder(borderSide: borderSide),
          fillColor: fillColor,
          filled: true,

          hintText: labelText,
          hintStyle: TextStyle(color: hintTextColor, fontSize: hintTextSize),
        ),
      ),
    );
  }
}
