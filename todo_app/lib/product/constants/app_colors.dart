import 'package:flutter/material.dart';

@immutable
class AppColors {
  const AppColors._();

  // light theme
  static const Color primaryLight = Color(0xFFFFFFFF);
  static const Color secondaryLight = Colors.blue;
  static Color thirdLight = Colors.blue.shade300;
  static const Color bgLight = Color(0xFFFFFFFF);

  // dark theme
  static const Color primaryDark = Color(0xFF000000);
  static const Color secondaryDark = Color(0xFF212121);
  static const Color thirdDark = Color(0xFF9E9E9E);
  static const Color bgDark = Color(0xFF616161);

  // red theme
  static const Color primaryRed = Color(0xFFFF0000);
  static const Color secondaryRed = Color(0xFFFF4D4D);
  static const Color thirdRed = Color(0xFFFF9999);
  static const Color bgRed = Color(0xFFFFE5E5);

  // orange theme
  static const Color primaryOrange = Color(0xFFFF4500);
  static const Color secondaryOrange = Color(0xFFFF7D4D);
  static const Color thirdOrange = Color(0xFFFFB599);
  static const Color bgOrange = Color(0xFFFFECE5);

  // yellow theme
  static const Color primaryYellow = Color(0xFFFFFF00);
  static const Color secondaryYellow = Color(0xFFFFFF4D);
  static const Color thirdYellow = Color(0xFFFFFF99);
  static const Color bgYellow = Color(0xFFFFFFE5);

  // green theme
  static const Color primaryGreen = Color(0xFF008000);
  static const Color secondaryGreen = Color(0xFF00F700);
  static const Color thirdGreen = Color(0xFF6FFF6F);
  static const Color bgGreen = Color(0xFFE5FFE5);

  // blue theme
  static const Color primaryBlue = Color(0xFF0000FF);
  static const Color secondaryBlue = Color(0xFF4D4DFF);
  static const Color thirdBlue = Color(0xFF9999FF);
  static const Color bgBlue = Color(0xFFE5E5FF);

  // purple theme
  static const Color primaryPurple = Color(0xFF800080);
  static const Color secondaryPurple = Color(0xFFF700F7);
  static const Color thirdPurple = Color(0xFFFF6FFF);
  static const Color bgPurple = Color(0xFFFFE5FF);

  // pink theme
  static const Color primaryPink = Color(0xFFFFC0CB);
  static const Color secondaryPink = Color(0xFFFFCCD5);
  static const Color thirdPink = Color(0xFFFFD9E0);
  static const Color bgPink = Color(0xFFFFE5EA);

  // grey
  static const Color greyDark = Color(0xFF666C8E);
  static const Color greyPrimary = Color(0xFF7C82A1);
  static const Color greyLight = Color(0xFFACAFC3);
  static const Color greyLighter = Color(0xFFF3F4F6);

  // basic
  static const Color whiteColor = Colors.white;
  static const Color blackColor = Colors.black;
  static const Color redColor = Colors.red;
  static const Color greenColor = Colors.green;
  static const Color blueColor = Colors.blue;
  static const Color yellowColor = Colors.yellow;
  static const Color orangeColor = Colors.orange;
  static const Color transparentColor = Colors.transparent;
  static Color textColor = const Color(0xFF3B3B3B);
}
