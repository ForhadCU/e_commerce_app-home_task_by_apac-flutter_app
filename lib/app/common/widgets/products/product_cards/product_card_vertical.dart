import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/common/styles/shadows.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/common/widgets/texts/product_price.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/common/widgets/texts/product_title.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/routes/app_pages.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/colors.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/sizes.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../custom_shapes/containers/rounded_container.dart';
import '../../custom_shapes/images/rectangle_image.dart';

class MyProductCradVertical extends StatelessWidget {
  const MyProductCradVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = MyHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.PRODUCT_DETAILS);
      },
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [MyShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(MySizes.productImageRadius),
          color: isDark ? MyColors.darkGrey : MyColors.white,
        ),
        child: Column(
          children: [
            /// -- Thumbnail, discount, favourite
            MyRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(MySizes.sm),
              backgroundColor: isDark ? MyColors.dark : MyColors.light,
              child: Stack(
                children: [
                  /// -- Thumbnail Image
                  MyRectangleImage(
                    imgeurl: MyImageString.img_shoe_samplek,
                    backgroundColor: isDark ? MyColors.dark : MyColors.light,
                  ),

                  /// -- Sale Tag
                  Positioned(
                    top: 8,
                    child: MyRoundedContainer(
                      radius: MySizes.borderRadiusSm,
                      backgroundColor: MyColors.secondary.withOpacity(.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: MySizes.sm, vertical: MySizes.xs),
                      child: Text(
                        "25%",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: MyColors.black),
                      ),
                    ),
                  ),

                  /// -- Favourite Icon Button
                  const Positioned(
                      right: 0,
                      top: 4,
                      child: MyCircularIcon(
                        icon: Iconsax.heart,
                        // color: Colors.transparent,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: MySizes.spaceBtwItems / 2,
            ),

            /// -- Details info
            Padding(
              padding: EdgeInsets.only(left: MySizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  MyProductTitleText(
                    title: 'Green Nike Air Shoes',
                    isSmallSize: true,
                  ),
                  SizedBox(height: MySizes.spaceBtwItems / 2),
                  // Rating
                  Row(
                    children: [
                      Text(
                        '3.9',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      const SizedBox(
                        width: MySizes.xs,
                      ),
                      Icon(
                        Iconsax.star1,
                        size: 12,
                        color: Colors.amber,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            // Price and Item counter
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price
                Padding(
                  padding: const EdgeInsets.only(left: MySizes.sm),
                  child: MyProductPriceText(price: "2500.0"),
                ),
                // Counter
                Container(
                  decoration: BoxDecoration(
                    color: MyColors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(MySizes.cardRadiusMd),
                      bottomRight: Radius.circular(MySizes.productImageRadius),
                    ),
                  ),
                  child: SizedBox(
                      width: MySizes.iconLg * 1.2,
                      height: MySizes.iconLg * 1.2,
                      child: Center(
                        child: Icon(
                          Iconsax.add,
                          color: MyColors.white,
                        ),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
