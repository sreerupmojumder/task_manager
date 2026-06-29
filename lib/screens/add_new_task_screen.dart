import 'package:flutter/material.dart';
import 'package:task_manager/utils/custom_text.dart';
import 'package:task_manager/widget/custom_appbar.dart';
import 'package:task_manager/widget/custom_button_icon.dart';
import 'package:task_manager/widget/custom_textfield.dart';
import 'package:task_manager/widget/screen_bg.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: ScreenBg(
        child: Column(
          crossAxisAlignment: .start,
          children: [
            SizedBox(height: 50),
            CustomText(
              title: 'Add New Task',
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 20),
            CustomTextfield(labelText: 'Subject'),
            SizedBox(height: 20),

            CustomTextfield(
              labelText: 'Description',
              maxLine: 5,
              keyboardType: TextInputType.multiline,
            ),
            SizedBox(height: 20),
            CustomButtonIcon(
              icon: Icons.arrow_forward_rounded,
            ),
          ],
        ),
      ),
    );
  }
}
