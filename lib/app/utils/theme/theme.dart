import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/theme/curstom_themes/appbar_theme.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/theme/curstom_themes/bottome_sheet_theme.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/theme/curstom_themes/checkbox_theme.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/theme/curstom_themes/chip_theme.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/theme/curstom_themes/elevated_button_theme.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/theme/curstom_themes/outlined_button_theme.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/theme/curstom_themes/text_field_theme.dart';
import 'package:e_commerce_app_home_task_by_apac_flutter_app/app/utils/theme/curstom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  // As there is no need to intantiate this class, we need to just use the constants of this class, so we can make them #static.
  TAppTheme._(); // This private constructor prevents instantiation

  // Light
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutLineButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

  // Dark
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutLineButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
