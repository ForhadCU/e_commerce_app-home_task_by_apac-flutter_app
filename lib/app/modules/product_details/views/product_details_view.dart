import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/common/widgets/texts/product_price.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/modules/product_details/views/widgets/bottom_add_to_cart.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/colors.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/image_strings.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/sizes.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/texts.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/device/device_utility.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/helpers/helper_functions.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/logging/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../common/widgets/texts/product_title.dart';
import '../controllers/product_details_controller.dart';

class ProductDetailsView extends GetView<ProductDetailsController> {
  const ProductDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final isDark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      /// -- Add Product To Cart
      bottomNavigationBar: MyBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image
            MyCurvedEdgeWidget(
              child: Container(
                color: isDark ? MyColors.darkGrey : MyColors.light,
                child: Stack(
                  children: [
                    /// Main Image
                    Container(
                      height: MyDeviceUtils.getScreenHeight() * 0.4,
                      width: double.infinity,
                      padding: EdgeInsets.all(MySizes.xl * 2),
                      child: Image(
                          image: AssetImage(MyImageString.img_shoe_samplek)),
                    ),

                    /// AppBar
                    MyAppBar(
                      isShowBackArrow: true,
                      actions: [
                        MyCircularIcon(
                          icon: Iconsax.heart,
                          // color: Colors.black,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),

            /// 2 - Product Details
            Padding(
              padding: EdgeInsets.only(
                  right: MySizes.defaultSpace,
                  left: MySizes.defaultSpace,
                  bottom: MySizes.defaultSpace),
              child: Column(
                children: [
                  /// - Rating & Share button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Rating
                      Row(
                        children: [
                          Icon(
                            Iconsax.star5,
                            color: Colors.amber,
                          ),
                          SizedBox(
                            width: MySizes.spaceBtwItems / 2,
                          ),
                          Text.rich(TextSpan(children: [
                            TextSpan(
                                text: '4.3',
                                style: Theme.of(context).textTheme.bodyLarge),
                            TextSpan(text: '(134)'),
                          ]))
                        ],
                      ),
                      // Share button
                      Icon(
                        Icons.share,
                        size: MySizes.iconMd,
                      )
                    ],
                  ),
                  SizedBox(
                    height: MySizes.spaceBtwItems,
                  ),

                  /// - Discount, Price & Sale Price
                  Row(
                    children: [
                      // Discount
                      MyRoundedContainer(
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
                      SizedBox(width: MySizes.spaceBtwItems),

                      // Price
                      MyProductPriceText(
                          price: '100.0', isLarge: false, lineTrough: true),

                      SizedBox(width: MySizes.spaceBtwItems / 2),
                      // Sale price
                      MyProductPriceText(price: '85.0', isLarge: true),
                    ],
                  ),
                  SizedBox(height: MySizes.spaceBtwItems),

                  /// - Title
                  Row(
                    children: [
                      MyProductTitleText(
                        title: 'Green Nike Air Shoes',
                        isSmallSize: false,
                      ),
                    ],
                  ),
                  SizedBox(height: MySizes.spaceBtwItems),

                  /// - Stock Status
                  Row(
                    children: [
                      Text("Status : ",
                          style: Theme.of(context).textTheme.labelLarge),
                      Text(
                        "In Stock",
                        style: Theme.of(context).textTheme.titleSmall,
                      )
                    ],
                  ),
                  SizedBox(height: MySizes.spaceBtwItems),

                  /// - Description
                  // Description title
                  Row(
                    children: [
                      Text(
                        "Description",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                  SizedBox(height: MySizes.spaceBtwItems / 2),
                  // Description text
                  ReadMoreText(
                    MyTextConstants.productDesc,
                    trimLines: 3,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Less',
                    moreStyle: Theme.of(context).textTheme.bodySmall,
                    lessStyle: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
