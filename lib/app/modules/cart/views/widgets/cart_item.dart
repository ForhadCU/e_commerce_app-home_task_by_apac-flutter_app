import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/common/widgets/texts/product_price.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/custom_shapes/images/rectangle_image.dart';
import '../../../../common/widgets/icons/circular_icon.dart';
import '../../../../common/widgets/products/product_cards/category_widget.dart';
import '../../../../common/widgets/texts/product_title.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
    this.isShowCounterButtonsAndTotal = true,
  });
  final bool isShowCounterButtonsAndTotal;

  @override
  Widget build(BuildContext context) {
    final isDark = MyHelperFunctions.isDarkMode(context);

    return ListView.separated(
        separatorBuilder: (_, __) => MySizes.spaceBtwSections.height,
        itemCount: 12,
        // physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (_, index) => Column(
              children: [
                /// 1 - Prodcut Image and Details with Counters
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Image
                    MyRectangleImage(
                      imgeurl: MyImageString.img_shoe_samplek,
                      width: MySizes.imageThumSize - 20,
                      height: MySizes.imageThumSize - 20,
                      padding: EdgeInsets.all(MySizes.xs),
                    ),
                    SizedBox(
                      width: MySizes.sm,
                    ),

                    /// 2 - Details with Counters
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Category
                          MyCategoryWidget(),
                          (MySizes.spaceBtwItems / 2).height,
                          // Title
                          MyProductTitleText(
                            title: "Green Nike Air Shoes",
                            isSmallSize: false,
                          ),
                          if (isShowCounterButtonsAndTotal)
                            MySizes.spaceBtwItems.height,

                          /// - Counters and Price
                          if (isShowCounterButtonsAndTotal)
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // - Counters
                                  Row(
                                    children: [
                                      // Minus icon button
                                      MyCircularIcon(
                                        icon: Iconsax.minus,
                                        backgroundColor: isDark
                                            ? MyColors.darkGrey
                                            : MyColors.darkGrey,
                                        color: isDark
                                            ? MyColors.light
                                            : MyColors.light,
                                        width: 24,
                                        height: 24,
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: MySizes.spaceBtwItems,
                                      ),
                                      // Counts
                                      Text(
                                        '5',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge,
                                      ),
                                      SizedBox(
                                        width: MySizes.spaceBtwItems,
                                      ),
                                      // Add icon button
                                      MyCircularIcon(
                                        icon: Iconsax.add,
                                        backgroundColor: isDark
                                            ? MyColors.primary
                                            : MyColors.primary,
                                        color: isDark
                                            ? MyColors.light
                                            : MyColors.light,
                                        width: 24,
                                        height: 24,
                                        size: 18,
                                      ),
                                    ],
                                  ),

                                  // - Price Total
                                  MyProductPriceText(
                                    price: '\$4000.0',
                                    isLarge: false,
                                  )
                                ])
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ));
  }
}
