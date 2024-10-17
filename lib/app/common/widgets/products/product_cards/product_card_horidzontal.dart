import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/common/styles/shadows.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/colors.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/sizes.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class MyProductCardVertical extends StatelessWidget {
  const MyProductCardVertical({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Container(
      width: 180,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [MyShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(MySizes.productImageRadius),
        color: dark ? MyColors.darkGrey : MyColors.white,
      ),
      child: Column(),
    );
  }
}
