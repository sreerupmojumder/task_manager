import 'package:flutter/material.dart';
import 'package:task_manager/utils/Customer_text.dart';
import 'package:task_manager/utils/app_colors.dart';
import 'package:task_manager/widget/custom_textfield.dart';
import 'package:task_manager/widget/screen_bg.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBg(
        child: Column(
          crossAxisAlignment: .start,
          children: [
            CustomerText(
              title: 'Your Email Address',
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 10),
            CustomerText(
              title:
                  'A 6 digit verification pin will send to your email address',
              color: Colors.grey,
            ),

            SizedBox(height: 15),
            CustomTextfield(hintText: 'Email'),
            SizedBox(height: 20),

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
