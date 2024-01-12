import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/product/constants/index.dart';

ThemeData pinkTheme() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    primaryColor: AppColors.secondaryPink,
    scaffoldBackgroundColor: AppColors.bgPink,
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: AppColors.transparentColor,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColors.transparentColor,
        statusBarIconBrightness: Brightness.dark,
      ),
      iconTheme: const IconThemeData(color: AppColors.secondaryPink),
      titleTextStyle: TextStyle(fontSize: 18, color: AppColors.textColor),
    ),
    textTheme: const TextTheme(
      headlineSmall: TextStyle(color: AppColors.blackColor),
      titleMedium: TextStyle(color: AppColors.blackColor),
      bodyMedium: TextStyle(color: AppColors.blackColor),
      bodySmall: TextStyle(color: AppColors.blackColor),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryPink,
      foregroundColor: AppColors.whiteColor,
    ),
    dialogTheme: const DialogTheme(
      backgroundColor: AppColors.bgPink,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryPink,
        splashFactory: NoSplash.splashFactory,
        shadowColor: AppColors.transparentColor,
        elevation: 0,
        shape: const StadiumBorder(),
      ),
    ),
    listTileTheme: ListTileThemeData(
      iconColor: AppColors.primaryPink,
      selectedTileColor: AppColors.thirdPink,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    cardTheme: CardTheme(
      elevation: 5,
      color: AppColors.whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      shadowColor: Colors.green,
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.all(AppColors.whiteColor),
      fillColor: MaterialStateColor.resolveWith((states) {
        return states.contains(MaterialState.selected) ? AppColors.primaryPink : Colors.transparent;
      }),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border:
          OutlineInputBorder(borderSide: const BorderSide(color: AppColors.thirdPink), borderRadius: BorderRadius.circular(15)),
      enabledBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: const BorderSide(color: AppColors.thirdPink)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: AppColors.thirdPink),
      ),
      filled: true,
      fillColor: AppColors.whiteColor,
    ),
  );
}
