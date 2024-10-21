import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/colors.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/sizes.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/device/device_utility.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';

class CheckOutButtonBottom extends StatelessWidget {
  const CheckOutButtonBottom({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = MyHelperFunctions.isDarkMode(context);
    return Container(
        padding: EdgeInsets.symmetric(
            vertical: MySizes.defaultSpace / 2,
            horizontal: MySizes.defaultSpace),
        /*   decoration:
            BoxDecoration(color: isDark ? MyColors.dark : MyColors.light), */
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed(Routes.ORDER_REVIEW);
          },
          child: Text.rich(TextSpan(children: [
            TextSpan(text: "Checkout "),
            TextSpan(text: " \$4000.0"),
          ])),
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: MySizes.md),
              backgroundColor: MyColors.primary,
              side: BorderSide(color: MyColors.primary)),
        ));
  }
}
