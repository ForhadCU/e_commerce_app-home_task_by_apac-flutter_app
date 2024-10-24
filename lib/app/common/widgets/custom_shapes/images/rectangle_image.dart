import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/colors.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class MyRectangleImage extends StatelessWidget {
  const MyRectangleImage(
      {super.key,
      this.width,
      this.height,
      required this.imgeurl,
      this.applyImageRadius = true,
      this.border,
      this.backgroundColor = MyColors.light,
      this.fit = BoxFit.contain,
      this.padding,
      this.isNetworkImage = false,
      this.onPressed,
      this.borderRadius = MySizes.md});

  final double? width, height;
  final String imgeurl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            border: border,
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            fit: fit,
            image: isNetworkImage
                ? NetworkImage(imgeurl)
                : AssetImage(imgeurl) as ImageProvider,
          ),
        ),
      ),
    );
  }
}
