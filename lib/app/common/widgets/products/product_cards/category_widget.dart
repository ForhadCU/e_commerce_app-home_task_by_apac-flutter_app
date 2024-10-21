import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../icons/circular_icon.dart';
import '../../texts/product_title.dart';

class MyCategoryWidget extends StatelessWidget {
  const MyCategoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // name
        MyProductTitleText(
          title: "Shoes & Snikers",
          isSmallSize: true,
        ),
        SizedBox(
          width: MySizes.xs,
        ),
        MyCircularIcon(
          icon: Icons.done,
          backgroundColor: MyColors.primary,
          color: const Color.fromARGB(255, 255, 255, 255),
          size: 8,
          width: 10,
          height: 10,
        )
      ],
    );
  }
}
