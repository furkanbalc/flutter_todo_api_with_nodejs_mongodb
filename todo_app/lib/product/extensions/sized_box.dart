import 'package:flutter/material.dart';
import 'package:todo_app/product/enums/app_sizes.dart';

extension CustomSizedBoxExtension on BuildContext {
  SizedBox get sizedBoxWidthLow => SizedBox(width: AppSizes.normal.value);
  SizedBox get sizedBoxWidthNormal => SizedBox(width: AppSizes.high.value);
  SizedBox get sizedBoxWidthMedium => SizedBox(width: AppSizes.ultra.value);

  SizedBox get sizedBoxHeightLow => SizedBox(height: AppSizes.normal.value);
  SizedBox get sizedBoxHeightNormal => SizedBox(height: AppSizes.high.value);
  SizedBox get sizedBoxHeightMedium => SizedBox(height: AppSizes.ultra.value);
}
