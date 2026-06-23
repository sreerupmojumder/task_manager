import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_manager/utils/assets_path.dart';

class ScreenBg extends StatelessWidget {
  final Widget child;
  const ScreenBg({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          SvgPicture.asset(AssetsPath.backgroundSVG, fit: BoxFit.cover),
          Padding(
            padding: EdgeInsets.only(bottom: 35, left: 35, right: 35, top: 190),
            child: child,
          ),
        ],
      ),
    );
  }
}
