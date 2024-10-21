import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/colors.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../controllers/navigation_menu_controller.dart';

class NavigationMenuView extends GetView<NavigationMenuController> {
  const NavigationMenuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final darkMode = MyHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(() => NavigationBar(
              height: 80,
              elevation: 0,
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (newIndex) =>
                  controller.selectedIndex.value = newIndex,
              backgroundColor: darkMode ? MyColors.dark : MyColors.light,
              indicatorColor: darkMode
                  ? MyColors.white.withOpacity(.1)
                  : MyColors.black.withOpacity(.1),
              destinations: const [
                NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
                NavigationDestination(
                    icon: Icon(Iconsax.wallet_check), label: 'Order'),
                NavigationDestination(
                    icon: Icon(Iconsax.notification), label: 'Notification'),
              ])),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}
