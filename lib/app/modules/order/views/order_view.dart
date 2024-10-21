import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/modules/cart/views/widgets/cart_item.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/modules/order/views/widgets/order_item.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/sizes.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/extensions/extensions.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/order_controller.dart';

class OrderView extends GetView<OrderController> {
  const OrderView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          "My Orders",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        isShowBackArrow: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(MySizes.defaultSpace),
        child: ListView.separated(
            itemBuilder: (_, index) => OrderItem(),
            separatorBuilder: (_, __) => MySizes.spaceBtwSections.height,
            itemCount: 12),
      ),
    );
  }
}
