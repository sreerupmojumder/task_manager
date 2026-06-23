import 'package:flutter/material.dart';
import 'package:task_manager/utils/Customer_text.dart';
import 'package:task_manager/utils/app_colors.dart';
import 'package:task_manager/widget/custom_textfield.dart';
import 'package:task_manager/widget/screen_bg.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBg(
        child: Column(
          children: [
            CustomerText(
              title: 'Join With Us',
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 15),

            CustomTextfield(hintText: 'Email'),
            SizedBox(height: 10),
            CustomTextfield(hintText: 'First Name'),
            SizedBox(height: 10),
            CustomTextfield(hintText: 'Last Name'),
            SizedBox(height: 10),
            CustomTextfield(hintText: 'Mobile'),
            SizedBox(height: 10),
            CustomTextfield(hintText: 'password', obscureText: true),
            SizedBox(height: 15),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.pColor,
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
              child: TextButton(
                onPressed: () {},
                child: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
            SizedBox(height: 25),

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
