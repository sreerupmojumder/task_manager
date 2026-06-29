import 'package:flutter/material.dart';
import 'package:task_manager/utils/app_colors.dart';

class CustomButtonIcon extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData icon;
  
  const CustomButtonIcon({super.key, this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    
    
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.pColor,
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Icon(icon, color: Colors.white, size: 20),
      ),
    );
  }
}