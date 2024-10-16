import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      // theme will change to dark or light depends on device settings
      themeMode: ThemeMode.system,
      theme: MyAppTheme.lightTheme, // this is default theme as light theme
      darkTheme: MyAppTheme.darkTheme, // this is dark theme
      useInheritedMediaQuery: true,
    );
  }
}
