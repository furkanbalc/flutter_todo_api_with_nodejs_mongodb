import 'package:flutter/material.dart';
import 'package:todo_app/feature/widgets/custom_theme_widget.dart';
import 'package:todo_app/product/constants/app_strings.dart';
import 'package:todo_app/product/extensions/index.dart';

class ThemeView extends StatefulWidget {
  const ThemeView({super.key});

  @override
  State<ThemeView> createState() => _ThemeViewState();
}

class _ThemeViewState extends State<ThemeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.kThemeSelect),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: context.paddings.allLow,
            child: Card(
              color: Theme.of(context).primaryColor.withOpacity(0.5),
              child: Padding(
                padding: context.paddings.allLow,
                child: const CustomThemeWidget(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
