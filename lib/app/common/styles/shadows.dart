import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class MyShadowStyle {
  static final verticalProductShadow = BoxShadow(
      color: MyColors.darkGrey.withOpacity(.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: Offset(0, 2));
  static final horizontalProductShadow = BoxShadow(
      color: MyColors.darkGrey.withOpacity(.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: Offset(0, 2));
}
