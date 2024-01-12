import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/feature/view_model/theme_provider.dart';
import 'package:todo_app/product/constants/index.dart';

class CustomThemeWidget extends StatefulWidget {
  const CustomThemeWidget({super.key});

  @override
  State<CustomThemeWidget> createState() => _CustomThemeWidgetState();
}

class _CustomThemeWidgetState extends State<CustomThemeWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),

      /// Choice Theme Buttons
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          customRadioButton(AppColors.primaryRed, 1),
          customRadioButton(AppColors.primaryOrange, 2),
          customRadioButton(AppColors.primaryYellow, 3),
          customRadioButton(AppColors.primaryGreen, 4),
          customRadioButton(AppColors.primaryBlue, 5),
          customRadioButton(AppColors.primaryPurple, 6),
          customRadioButton(AppColors.primaryPink, 7),
          customRadioButton(AppColors.primaryLight, 8),
          customRadioButton(AppColors.primaryDark, 9),
        ],
      ),
    );
  }

  Widget customRadioButton(Color color, int index) {
    int value = Provider.of<ThemeProvider>(context).themeNumber;
    return InkWell(
      onTap: () {
        setState(() {
          value = index;
          Provider.of<ThemeProvider>(context, listen: false).whichThemes(value);
        });
      },
      child: Container(
        width: (MediaQuery.of(context).size.width - 40) / 9,
        height: MediaQuery.of(context).size.width / 9,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          // borderSide:
          border: Border.all(width: 3, color: (value == index) ? Colors.white : color),
        ),
        child: Icon(Icons.check, color: (value == index) ? Colors.green : color),
      ),
    );
  }
}
