import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/product/constants/app_colors.dart';

ThemeData darkTheme() {
  final ThemeData base = ThemeData.dark();

  return base.copyWith(
    primaryColor: AppColors.bgDark,
    scaffoldBackgroundColor: AppColors.blackColor,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      color: AppColors.transparentColor,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColors.transparentColor,
        statusBarIconBrightness: Brightness.light,
      ),
      iconTheme: IconThemeData(
        color: AppColors.primaryLight,
      ),
    ),
    textTheme: const TextTheme(
      headlineSmall: TextStyle(color: AppColors.whiteColor),
      titleMedium: TextStyle(color: AppColors.whiteColor),
      bodyMedium: TextStyle(color: AppColors.whiteColor),
      bodySmall: TextStyle(color: AppColors.whiteColor),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryDark,
      foregroundColor: AppColors.whiteColor,
    ),
    dialogTheme: const DialogTheme(
      backgroundColor: AppColors.bgDark,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryDark,
        splashFactory: NoSplash.splashFactory,
        shadowColor: AppColors.transparentColor,
        elevation: 0,
        shape: const StadiumBorder(),
      ),
    ),
    listTileTheme: ListTileThemeData(
      iconColor: AppColors.primaryDark,
      tileColor: AppColors.thirdDark,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      titleTextStyle: const TextStyle(color: AppColors.blackColor),
    ),
    cardTheme: CardTheme(
      elevation: 5,
      color: AppColors.secondaryDark,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.all(AppColors.whiteColor),
      fillColor: MaterialStateColor.resolveWith((states) {
        return states.contains(MaterialState.selected) ? AppColors.primaryGreen : Colors.transparent;
      }),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border:
          OutlineInputBorder(borderSide: const BorderSide(color: AppColors.thirdDark), borderRadius: BorderRadius.circular(15)),
      enabledBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: const BorderSide(color: AppColors.thirdDark)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: AppColors.thirdPurple),
      ),
      filled: true,
      fillColor: AppColors.whiteColor,
    ),
  );
}
