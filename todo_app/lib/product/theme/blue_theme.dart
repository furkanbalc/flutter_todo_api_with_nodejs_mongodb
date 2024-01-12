import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/product/constants/index.dart';

ThemeData blueTheme() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    primaryColor: AppColors.secondaryBlue,
    scaffoldBackgroundColor: AppColors.bgBlue,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0,
      color: AppColors.transparentColor,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColors.transparentColor,
        statusBarIconBrightness: Brightness.dark,
      ),
      iconTheme: const IconThemeData(color: AppColors.secondaryBlue),
      titleTextStyle: TextStyle(fontSize: 18, color: AppColors.textColor),
    ),
    textTheme: const TextTheme(
      headlineSmall: TextStyle(color: AppColors.blackColor),
      titleMedium: TextStyle(color: AppColors.blackColor),
      bodyMedium: TextStyle(color: AppColors.blackColor),
      bodySmall: TextStyle(color: AppColors.blackColor),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryBlue,
      foregroundColor: AppColors.whiteColor,
    ),
    dialogTheme: const DialogTheme(backgroundColor: AppColors.bgBlue),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryBlue,
        splashFactory: NoSplash.splashFactory,
        shadowColor: AppColors.transparentColor,
        elevation: 0,
        shape: const StadiumBorder(),
      ),
    ),
    listTileTheme: ListTileThemeData(
      iconColor: AppColors.primaryBlue,
      tileColor: AppColors.whiteColor,
      selectedTileColor: AppColors.thirdBlue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
    cardTheme: CardTheme(
      elevation: 5,
      color: AppColors.secondaryBlue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.all(AppColors.whiteColor),
      fillColor: MaterialStateColor.resolveWith((states) {
        return states.contains(MaterialState.selected) ? AppColors.primaryBlue : Colors.transparent;
      }),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border:
          OutlineInputBorder(borderSide: const BorderSide(color: AppColors.thirdBlue), borderRadius: BorderRadius.circular(15)),
      enabledBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: const BorderSide(color: AppColors.thirdBlue)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: AppColors.thirdBlue),
      ),
      filled: true,
      fillColor: AppColors.whiteColor,
    ),
  );
}
