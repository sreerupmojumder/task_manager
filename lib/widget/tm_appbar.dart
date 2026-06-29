import 'package:flutter/material.dart';
import 'package:task_manager/utils/app_colors.dart';
import 'package:task_manager/utils/assets_path.dart';

class TmAppbar extends StatelessWidget implements PreferredSize {
  const TmAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.pColor,
      title: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(AssetsPath.profileImage),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                'Sreerup Mojumder',
                style: Theme.of(
                  context,
                ).textTheme.titleSmall!.copyWith(color: Colors.white),
              ),
              Text(
                'abc@gmail.com',
                style: Theme.of(
                  context,
                ).textTheme.titleSmall!.copyWith(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
