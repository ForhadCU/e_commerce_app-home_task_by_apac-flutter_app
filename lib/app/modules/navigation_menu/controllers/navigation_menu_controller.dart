import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationMenuController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.red,
    ),
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
