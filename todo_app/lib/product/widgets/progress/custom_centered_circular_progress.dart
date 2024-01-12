import 'package:flutter/material.dart';
import 'package:todo_app/product/constants/index.dart';

class CustomCenteredCircularProgress extends StatelessWidget {
  const CustomCenteredCircularProgress({super.key, this.color});
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator(color: color ?? AppColors.whiteColor));
  }
}
