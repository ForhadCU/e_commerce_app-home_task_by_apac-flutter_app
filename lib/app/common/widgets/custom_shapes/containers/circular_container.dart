import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class MyCircularContainer extends StatelessWidget {
  const MyCircularContainer(
      {super.key,
      this.width = 400,
      this.height = 400,
      this.radius = 400,
      this.padding = 0,
      this.child,
      this.backgroundColor = MyColors.white});
  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(radius)),
      child: child,
    );
  }
}
