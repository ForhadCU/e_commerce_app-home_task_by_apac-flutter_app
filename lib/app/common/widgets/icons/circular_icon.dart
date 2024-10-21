import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/colors.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/sizes.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class MyCircularIcon extends StatelessWidget {
  /// A custom Circular Icon widget with a background color
  ///
  /// Properties are:
  /// Container [width], [height], & [backgroundColor]
  ///
  /// Icon's [size], [color] & [onPressed]
  const MyCircularIcon(
      {super.key,
      this.width = 32,
      this.height = 32,
      this.size = MySizes.lg,
      required this.icon,
      this.color,
      this.backgroundColor,
      this.onPressed});

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backgroundColor != null
              ? backgroundColor!
              : MyHelperFunctions.isDarkMode(context)
                  ? MyColors.black.withOpacity(.8)
                  : MyColors.white.withOpacity(.8)),
      child: IconButton(
        padding: EdgeInsets.all(0),
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
