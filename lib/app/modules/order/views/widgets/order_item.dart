import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/modules/cart/views/widgets/cart_item.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/colors.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/sizes.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/extensions/extensions.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = MyHelperFunctions.isDarkMode(context);
    return MyRoundedContainer(
      showBorder: true,
      padding: EdgeInsets.all(MySizes.md),
      backgroundColor:
          isDark ? MyColors.black : MyColors.darkGrey.withOpacity(.1),
      child: Column(
        children: [
          /// -- Processing
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// - Left Part
              Row(
                children: [
                  /// Processing Icon
                  Icon(
                    Iconsax.activity,
                    // color: MyColors.darkerGrey,
                  ),
                  (MySizes.spaceBtwItems / 1.5).width,

                  /// Text and Date
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Processing",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: MyColors.primary),
                      ),
                      (MySizes.xs).height,
                      Text(
                        "14 Aug 2024",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  )
                ],
              ),

              /// - Right Part: Forward icon
              Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: MyColors.darkGrey,
              )
            ],
          ),
          MySizes.spaceBtwSections.height,

          /// -- Order and Shipping Date
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// - Order
              Row(
                children: [
                  /// Processing Icon
                  Icon(
                    Iconsax.tag,
                    // color: MyColors.darkerGrey,
                  ),
                  (MySizes.spaceBtwItems / 1.5).width,

                  /// Text and Date
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Order",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: MyColors.darkGrey),
                      ),
                      (MySizes.xs).height,
                      Text(
                        "[#167EFD34U]",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  )
                ],
              ),

              ///  - Shipping Date
              Row(
                children: [
                  /// Processing Icon
                  Icon(
                    Iconsax.ship,
                    // color: MyColors.darkerGrey,
                  ),
                  (MySizes.spaceBtwItems / 1.5).width,

                  /// Text and Date
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Shipping Date",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: MyColors.darkGrey),
                      ),
                      (MySizes.xs).height,
                      Text(
                        "16 Aug 2024",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
