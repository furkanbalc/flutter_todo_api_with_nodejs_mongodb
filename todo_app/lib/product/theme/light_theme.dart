import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/product/constants/index.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    primaryColor: AppColors.thirdLight,
    scaffoldBackgroundColor: AppColors.bgLight,
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: AppColors.transparentColor,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColors.transparentColor,
        statusBarIconBrightness: Brightness.dark,
      ),
      iconTheme: const IconThemeData(color: AppColors.secondaryLight),
      titleTextStyle: TextStyle(fontSize: 18, color: AppColors.textColor),
    ),
    textTheme: const TextTheme(
      headlineSmall: TextStyle(color: AppColors.blackColor),
      titleMedium: TextStyle(color: AppColors.blackColor),
      bodyMedium: TextStyle(color: AppColors.blackColor),
      bodySmall: TextStyle(color: AppColors.blackColor),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.secondaryLight,
      foregroundColor: AppColors.primaryLight,
    ),
    dialogTheme: const DialogTheme(
      backgroundColor: AppColors.primaryLight,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.secondaryLight,
        splashFactory: NoSplash.splashFactory,
        shadowColor: AppColors.transparentColor,
        elevation: 0,
        shape: const StadiumBorder(),
      ),
    ),
    listTileTheme: ListTileThemeData(
      iconColor: AppColors.secondaryLight,
      tileColor: AppColors.primaryLight,
      selectedTileColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    cardTheme: CardTheme(
      color: AppColors.blackColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.all(AppColors.whiteColor),
      fillColor: MaterialStateColor.resolveWith((states) {
        return states.contains(MaterialState.selected) ? AppColors.secondaryLight : Colors.transparent;
      }),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderSide: BorderSide(color: AppColors.thirdLight), borderRadius: BorderRadius.circular(15)),
      enabledBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide(color: AppColors.thirdLight)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: AppColors.thirdLight),
      ),
      filled: true,
      fillColor: AppColors.whiteColor,
    ),
  );
}
