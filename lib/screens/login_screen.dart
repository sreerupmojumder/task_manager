import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/controller/auth_controller.dart';
import 'package:task_manager/data/model/api_response.dart';
import 'package:task_manager/data/model/user_model.dart';
import 'package:task_manager/data/service/api_caller.dart';
import 'package:task_manager/screens/forget_password_screen.dart';
import 'package:task_manager/screens/main_nav_screen.dart';
import 'package:task_manager/screens/sign_up_screen.dart';
import 'package:task_manager/utils/custom_text.dart';
import 'package:task_manager/utils/app_colors.dart';
import 'package:task_manager/utils/urls.dart';
import 'package:task_manager/widget/custom_button_icon.dart';
import 'package:task_manager/widget/screen_bg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> signIn() async {
    final ApiResponse response = await ApiCaller.postRequest(
      url: Urls.signInURL,
      body: {
        "email": emailController.text.trim().toString(),
        'password': passwordController.text.trim().toString(),
      },
    );

    if (response.isSuccess) {
      UserModel model = UserModel.fromJson(response.resposeData['data']);
      String accessToken = response.resposeData['token'];

      AuthController.saveUserData(model, accessToken);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainNavScreen()),
      );
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Sign In Success...')));
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(response.resposeData['data'])));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SignUpScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
      body: ScreenBg(
        topPadding: 190,
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: .start,

            children: [
              CustomText(
                title: 'Get Started With',
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),

              SizedBox(height: 20),

              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter email';
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height: 15),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: 'Password',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Password';
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height: 15),

              CustomButtonIcon(
                icon: Icons.arrow_forward_rounded,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    signIn();
                  }
                },
              ),
              SizedBox(height: 40),

              Center(
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgetPasswordScreen(),
                          ),
                        );
                      },
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForgetPasswordScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Forget Password?',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),

                    RichText(
                      text: TextSpan(
                        text: "Don't have an account?  ",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: "Sign Up",
                            style: TextStyle(
                              color: AppColors.pColor,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUpScreen(),
                                  ),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
