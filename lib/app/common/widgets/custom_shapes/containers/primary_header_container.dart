import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class MyPrimaryHeaderContainer extends StatelessWidget {
  const MyPrimaryHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MyCurvedEdgeWidget(
      child: Container(
        color: MyColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          // height: 400,
          height: MyDeviceUtils.getScreenHeight() * .3,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: MyCircularContainer(
                    backgroundColor: MyColors.textWhite.withOpacity(.1)),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: MyCircularContainer(
                    backgroundColor: MyColors.textWhite.withOpacity(.1)),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
