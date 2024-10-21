import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/modules/cart/views/widgets/checkout_btn_bottom.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/colors.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/image_strings.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/sizes.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/extensions/extensions.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../cart/views/widgets/cart_item.dart';
import '../controllers/order_review_controller.dart';

class OrderReviewView extends GetView<OrderReviewController> {
  const OrderReviewView({super.key});
  @override
  Widget build(BuildContext context) {
    final isDark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: MyAppBar(
        isShowBackArrow: true,
        title: Text(
          "Order Review",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              /// -- Items in Cart
              CartItems(
                isShowCounterButtonsAndTotal: false,
              ),
              MySizes.spaceBtwSections.height,

              /// -- Billing Section
              MyRoundedContainer(
                padding: EdgeInsets.all(MySizes.md),
                showBorder: true,
                backgroundColor: isDark ? MyColors.black : MyColors.white,
                child: Column(
                  children: [
                    /// Pricing
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Subtotal",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          "\$14373.0",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    (MySizes.spaceBtwItems / 2).height,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Shipping Fee",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          "\$8.0",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    (MySizes.spaceBtwItems / 2).height,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Tax Fee",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          "\$141.0",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    MySizes.spaceBtwItems.height,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Order Total",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        Text(
                          "\$1615.0",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ],
                    ),
                    (MySizes.spaceBtwItems / 2).height,

                    /// Divider
                    Divider(),
                    MySizes.spaceBtwItems.height,

                    /// Payment Method
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Paymennt Method",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          "Change",
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  color: MyColors.primary.withOpacity(.8)),
                        ),
                      ],
                    ),
                    MySizes.spaceBtwItems.height,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: MySizes.md),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage(MyImageString.logo_paypal),
                            width: 24,
                            height: 24,
                          ),
                          MySizes.spaceBtwItems.width,
                          Text("Paypal")
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      /// Checkout Button
      bottomNavigationBar: CheckOutButtonBottom(),
    );
  }
}
