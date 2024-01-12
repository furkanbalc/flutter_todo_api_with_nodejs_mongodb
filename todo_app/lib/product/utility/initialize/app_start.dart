import 'package:flutter/material.dart';
import 'package:todo_app/feature/view_model/theme_provider.dart';

@immutable
class ApplicationStart {
  const ApplicationStart._();
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await ThemeProvider().createPrefObj();
  }
}
