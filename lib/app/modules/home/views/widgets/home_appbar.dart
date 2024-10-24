import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/texts.dart';

class MyHomeAppBar extends StatelessWidget {
  const MyHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          MyTextConstants.homeAppbarTitle,
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .apply(color: MyColors.grey),
        ),
        Text(
          MyTextConstants.homeAppbarSubTitle,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: MyColors.white),
        ),
      ]),
      actions: [
        MyCartCounterIcon(onPressed: () {
          Get.toNamed(Routes.CART);
        })
      ],
    );
  }
}
