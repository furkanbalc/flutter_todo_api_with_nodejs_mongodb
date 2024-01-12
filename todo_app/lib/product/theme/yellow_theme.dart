import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/product/constants/index.dart';

ThemeData yellowTheme() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    primaryColor: AppColors.secondaryYellow,
    scaffoldBackgroundColor: AppColors.bgYellow,
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: AppColors.transparentColor,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColors.transparentColor,
        statusBarIconBrightness: Brightness.dark,
      ),
      iconTheme: const IconThemeData(color: AppColors.secondaryYellow),
      titleTextStyle: TextStyle(fontSize: 18, color: AppColors.textColor),
    ),
    textTheme: const TextTheme(
      headlineSmall: TextStyle(color: AppColors.blackColor),
      titleMedium: TextStyle(color: AppColors.blackColor),
      bodyMedium: TextStyle(color: AppColors.blackColor),
      bodySmall: TextStyle(color: AppColors.blackColor),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryYellow,
      foregroundColor: AppColors.whiteColor,
    ),
    dialogTheme: const DialogTheme(
      backgroundColor: AppColors.bgYellow,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryYellow,
        splashFactory: NoSplash.splashFactory,
        shadowColor: AppColors.transparentColor,
        elevation: 0,
        shape: const StadiumBorder(),
      ),
    ),
    listTileTheme: ListTileThemeData(
      iconColor: AppColors.primaryYellow,
      tileColor: AppColors.whiteColor,
      selectedTileColor: AppColors.thirdYellow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      textColor: AppColors.textColor,
    ),
    cardTheme: CardTheme(
      elevation: 5,
      color: AppColors.secondaryYellow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.all(AppColors.whiteColor),
      fillColor: MaterialStateColor.resolveWith((states) {
        return states.contains(MaterialState.selected) ? AppColors.primaryYellow : Colors.transparent;
      }),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border:
          OutlineInputBorder(borderSide: const BorderSide(color: AppColors.thirdYellow), borderRadius: BorderRadius.circular(15)),
      enabledBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: const BorderSide(color: AppColors.thirdYellow)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: AppColors.thirdYellow),
      ),
      filled: true,
      fillColor: AppColors.whiteColor,
    ),
  );
}
