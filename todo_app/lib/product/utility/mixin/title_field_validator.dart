import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/feature/view/add_view.dart';
import 'package:todo_app/feature/view/home_view.dart';
import 'package:todo_app/feature/view_model/home_provider.dart';
import 'package:todo_app/product/constants/index.dart';

mixin TitleFieldValidator on State<AddView> {
  Future<void> checkTitle(HomeProvider watch, BuildContext context) async {
    if (watch.title.isNotEmpty) {
      await context.read<HomeProvider>().addTodo();
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeView()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          duration: Duration(seconds: 2),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red,
          content: Text(AppStrings.titleIsNotEmpty),
        ),
      );
    }
  }
}
