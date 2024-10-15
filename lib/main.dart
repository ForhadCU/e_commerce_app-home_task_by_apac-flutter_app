import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/routes/app_pages.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      themeMode: ThemeMode
          .system, // theme will change to dark or light depends on device settings
      theme: TAppTheme.lightTheme, // this is default theme as light theme
      darkTheme: TAppTheme.darkTheme, // this is dark theme
      useInheritedMediaQuery: true,
    ),
  );
}
