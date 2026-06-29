import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/data/model/api_response.dart';
import 'package:task_manager/data/service/api_caller.dart';
import 'package:task_manager/screens/login_screen.dart';
import 'package:task_manager/utils/custom_text.dart';
import 'package:task_manager/utils/app_colors.dart';
import 'package:task_manager/utils/urls.dart';
import 'package:task_manager/widget/screen_bg.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> signUp() async {
    final ApiResponse response = await ApiCaller.postRequest(
      url: Urls.signUpURL,
      body: {
        "email": emailController.text,
        "firstName": firstNameController.text,
        "lastName": lastNameController.text,
        "mobile": mobileController.text,
        "password": passwordController.text,
      },
    );

    if (response.isSuccess) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Sign Up Success...')));
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(response.resposeData['data'])));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBg(
        topPadding: 190,
        child: Form(
          key: formkey,

          child: Column(
            children: [
              CustomText(
                title: 'Join With Us',
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 15),

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
              SizedBox(height: 10),
              TextFormField(
                controller: firstNameController,
                decoration: InputDecoration(
                  hintText: 'First name',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter firstName';
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: lastNameController,

                decoration: InputDecoration(
                  hintText: 'last name',
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  fillColor: Colors.white,
                  filled: true,
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter lastName';
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: mobileController,
                decoration: InputDecoration(
                  hintText: 'Mobile',
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  fillColor: Colors.white,
                  filled: true,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter mobile';
                  } else if (value.length != 11) {
                    return 'Please enter correct mobile number';
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height: 10),

              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  fillColor: Colors.white,
                  filled: true,
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter password';
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height: 15),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      signUp();
                    }
                  },
                  child: Icon(Icons.arrow_circle_right_outlined, size: 25),
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
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pop(context);
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
