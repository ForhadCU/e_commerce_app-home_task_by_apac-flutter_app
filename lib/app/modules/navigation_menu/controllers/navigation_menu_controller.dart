import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/modules/cart/views/cart_view.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/modules/home/views/home_view.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/modules/order/views/order_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationMenuController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeView(),
    const OrderView(),
    Center(
      child: Text("No notificationn"),
    )
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
