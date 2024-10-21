import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/routes/app_pages.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/colors.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/sizes.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class MyBottomAddToCart extends StatelessWidget {
  const MyBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = MyHelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MySizes.defaultSpace, vertical: MySizes.spaceBtwItems),
      decoration: BoxDecoration(
          color: isDark ? MyColors.darkerGrey : MyColors.light,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(MySizes.cardRadiusLg),
              topRight: Radius.circular(MySizes.cardRadiusLg))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// - Counters
          Row(
            children: [
              // Minus icon button
              MyCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: isDark ? MyColors.darkGrey : MyColors.darkGrey,
                color: isDark ? MyColors.dark : MyColors.light,
              ),
              SizedBox(
                width: MySizes.spaceBtwItems,
              ),
              // Counts
              Text(
                '5',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(
                width: MySizes.spaceBtwItems,
              ),
              // Add icon button
              MyCircularIcon(
                icon: Iconsax.add,
                backgroundColor: isDark ? MyColors.dark : MyColors.dark,
                color: isDark ? MyColors.light : MyColors.light,
              ),
            ],
          ),

          /// - Add Buttonn
          ElevatedButton(
            onPressed: () {
              Get.toNamed(Routes.CART);
            },
            child: Text("Add to Cart"),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: MySizes.md),
                backgroundColor: MyColors.black,
                side: BorderSide(color: MyColors.black)),
          )
        ],
      ),
    );
  }
}
