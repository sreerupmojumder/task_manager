import 'package:flutter/material.dart';
import 'package:task_manager/utils/app_colors.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String name;
  final String email;
  final String imagePath;

  const CustomAppbar({
    super.key,
    this.name = 'Sreerup Mojumder',
    this.email = 'abc@gmail.com',
    this.imagePath = 'assets/images/sreerup.jpg',
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.pColor,
      automaticallyImplyLeading: false,
      leading: Padding(
        padding: const EdgeInsets.all(8),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          foregroundImage: AssetImage(imagePath),
        ),
      ),
      title: ListTile(
        horizontalTitleGap: 8,
        contentPadding: EdgeInsets.zero,
        title: Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          email,
          style: const TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
