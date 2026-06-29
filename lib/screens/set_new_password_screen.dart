import 'package:flutter/material.dart';
import 'package:task_manager/utils/custom_text.dart';
import 'package:task_manager/utils/app_colors.dart';
import 'package:task_manager/widget/custom_button.dart';
import 'package:task_manager/widget/custom_textfield.dart';
import 'package:task_manager/widget/screen_bg.dart';

class SetNewPasswordScreen extends StatelessWidget {
  const SetNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBg(
        topPadding: 190,
        child: Column(
          children: [
            CustomText(
              title: 'Set Password',
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 10),
            CustomText(
              title:
                  'Minimum length password 8 character with Latter and number conbination',
            ),
            SizedBox(height: 10),

            CustomTextfield(labelText: 'Password', obscureText: true),

            SizedBox(height: 10),

            CustomTextfield(labelText: 'Confirm Password', obscureText: true),
            SizedBox(height: 15),
            CustomFilledButton(
              onTap: () {},
              title: 'Confirm',
              bgColor: AppColors.pColor,
              textColor: Colors.white,
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
