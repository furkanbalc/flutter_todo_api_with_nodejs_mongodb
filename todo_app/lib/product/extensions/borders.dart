import 'package:flutter/material.dart';
import 'package:todo_app/product/enums/app_sizes.dart';

extension CustomBordersExtension on BuildContext {
  CustomBorders get borders => CustomBorders(this);
}

class CustomBorders {
  final BuildContext context;
  CustomBorders(this.context);

  Radius get radiusLow => Radius.circular(AppSizes.low.value);
  Radius get radiusNormal => Radius.circular(AppSizes.normal.value);
  Radius get radiusMedium => Radius.circular(AppSizes.medium.value);
  Radius get radiusHigh => Radius.circular(AppSizes.high.value);

  BorderRadius get borderRadiusLow => BorderRadius.circular(AppSizes.low.value);
  BorderRadius get borderRadiusNormal => BorderRadius.circular(AppSizes.normal.value);
  BorderRadius get borderRadiusMedium => BorderRadius.circular(AppSizes.medium.value);
  BorderRadius get borderRadiusHigh => BorderRadius.circular(AppSizes.high.value);
  BorderRadius get onlyTop => const BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15));
}
