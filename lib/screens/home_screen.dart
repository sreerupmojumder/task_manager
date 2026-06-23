import 'package:flutter/material.dart';
import 'package:task_manager/widget/custom_appbar.dart';
import 'package:task_manager/widget/screen_bg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: ScreenBg(child: Container()),
    );
  }
}
