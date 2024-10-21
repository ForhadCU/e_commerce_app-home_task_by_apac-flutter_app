import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/common/widgets/custom_shapes/images/rectangle_image.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/common/widgets/texts/product_title.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/modules/cart/views/widgets/checkout_btn_bottom.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/colors.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/image_strings.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/sizes.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/device/device_utility.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/extensions/extensions.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/widgets/products/product_cards/category_widget.dart';
import '../controllers/cart_controller.dart';
import 'widgets/cart_item.dart';

class CartView extends GetView<CartController> {
  const CartView({super.key});
  @override
  Widget build(BuildContext context) {
    final isDark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: CheckOutButtonBottom(),
      appBar: MyAppBar(
        isShowBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: SizedBox(
            height: MyDeviceUtils.getScreenHeight(),
            child: CartItems(),
          )),
    );
  }
}
