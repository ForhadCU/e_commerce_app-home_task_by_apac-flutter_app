import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/common/widgets/products/product_cards/product_card_horidzontal.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/colors.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/sizes.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/texts.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/device/device_utility.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../controllers/home_controller.dart';
import 'widgets/home_appbar.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // -- Header
            MyPrimaryHeaderContainer(
              child: Column(children: [
                //-- Appbar
                MyHomeAppBar(),
                SizedBox(
                  height: MySizes.spaceBtwSections,
                ),
                //-- SearchBar
                MySearchContainer(
                  text: "Search in Store",
                )
              ]),
            ),

            // -- Body
            Padding(
              padding: EdgeInsets.all(MySizes.defaultSpace),
              child: Column(
                children: [
                  // -- Product Cards
                  MyProductCardVertical(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
