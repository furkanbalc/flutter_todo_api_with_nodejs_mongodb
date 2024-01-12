import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/product/constants/index.dart';

ThemeData orangeTheme() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    primaryColor: AppColors.secondaryOrange,
    scaffoldBackgroundColor: AppColors.bgOrange,
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: AppColors.transparentColor,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColors.transparentColor,
        statusBarIconBrightness: Brightness.dark,
      ),
      iconTheme: const IconThemeData(color: AppColors.secondaryOrange),
      titleTextStyle: TextStyle(fontSize: 18, color: AppColors.textColor),
    ),
    textTheme: const TextTheme(
      headlineSmall: TextStyle(color: AppColors.blackColor),
      titleMedium: TextStyle(color: AppColors.blackColor),
      bodyMedium: TextStyle(color: AppColors.blackColor),
      bodySmall: TextStyle(color: AppColors.blackColor),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryOrange,
      foregroundColor: AppColors.whiteColor,
    ),
    dialogTheme: const DialogTheme(
      backgroundColor: AppColors.bgOrange,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryOrange,
        splashFactory: NoSplash.splashFactory,
        shadowColor: AppColors.transparentColor,
        elevation: 0,
        shape: const StadiumBorder(),
      ),
    ),
    listTileTheme: ListTileThemeData(
      iconColor: AppColors.primaryOrange,
      tileColor: AppColors.whiteColor,
      selectedTileColor: AppColors.thirdOrange,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      textColor: AppColors.textColor,
    ),
    cardTheme: CardTheme(
      elevation: 5,
      color: AppColors.secondaryOrange,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.all(AppColors.whiteColor),
      fillColor: MaterialStateColor.resolveWith((states) {
        return states.contains(MaterialState.selected) ? AppColors.primaryOrange : Colors.transparent;
      }),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border:
          OutlineInputBorder(borderSide: const BorderSide(color: AppColors.thirdOrange), borderRadius: BorderRadius.circular(15)),
      enabledBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: const BorderSide(color: AppColors.thirdOrange)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: AppColors.thirdOrange),
      ),
      filled: true,
      fillColor: AppColors.whiteColor,
    ),
  );
}
