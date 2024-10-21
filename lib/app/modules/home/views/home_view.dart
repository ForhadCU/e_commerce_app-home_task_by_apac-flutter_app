import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../controllers/home_controller.dart';
import 'widgets/home_appbar.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // -- Header
            const MyPrimaryHeaderContainer(
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
              padding:
                  const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Heading
                  MySectionHeading(
                    title: "Popular Products",
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: MySizes.spaceBtwItems,
                  ),

                  /// -- Product Cards
                  MyGridLayout(
                      itemCount: 8,
                      itemBuilder: (_, index) => const MyProductCradVertical()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
