import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/feature/view/splash_view.dart';
import 'package:todo_app/feature/view_model/home_provider.dart';
import 'package:todo_app/feature/view_model/theme_provider.dart';
import 'package:todo_app/product/constants/app_strings.dart';
import 'package:todo_app/product/service/api_service.dart';
import 'package:todo_app/product/utility/initialize/app_start.dart';

Future<void> main() async {
  await ApplicationStart.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(create: (context) => ThemeProvider()),
        ChangeNotifierProvider<HomeProvider>(create: (context) => HomeProvider(ApiService(Dio()))),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themesData, child) {
        themesData.loadFromSharedPreferences();
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppStrings.kAppName,
          theme: themesData.selectedTheme,
          themeMode: ThemeMode.system,
          home: const SplashView(),
        );
      },
    );
  }
}
