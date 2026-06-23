import 'package:flutter/material.dart';
import 'package:task_manager/screens/login_screen.dart';
import 'package:task_manager/utils/assets_path.dart';
import 'package:task_manager/widget/screen_bg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    
    WidgetsBinding.instance.addPostFrameCallback((_) {
      moveToNextScreen();
    });

    super.initState();
  }

  Future<void> moveToNextScreen() async {
    Future.delayed(Duration(seconds: 5));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBg(
        child: Center(child: Image.asset(AssetsPath.logoPNG, width: 270)),
      ),
    );
  }
}
