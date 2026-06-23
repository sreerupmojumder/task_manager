import 'package:flutter/material.dart';
import 'package:task_manager/utils/Customer_text.dart';
import 'package:task_manager/utils/app_colors.dart';
import 'package:task_manager/widget/custom_textfield.dart';
import 'package:task_manager/widget/screen_bg.dart';

class ResetPinScreen extends StatelessWidget {
  const ResetPinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBg(
        child: Column(
          children: [
            CustomerText(
              title: 'PIN Verification',
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 10),
            CustomerText(
              title:
                  'A 6 digit verification pin will send to your email address',
            ),
            SizedBox(height: 10),

            Row(
              spacing: 4,
              children: [
                CustomTextfield(textFieldWidth: 45),
                CustomTextfield(textFieldWidth: 45),
                CustomTextfield(textFieldWidth: 45),
                CustomTextfield(textFieldWidth: 45),
                CustomTextfield(textFieldWidth: 45),
                CustomTextfield(textFieldWidth: 45),
              ],
            ),

            SizedBox(height: 50),
            Center(
              child: RichText(
                text: TextSpan(
                  text: "Have an account? ",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: "Sign in",
                      style: TextStyle(
                        color: AppColors.pColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
