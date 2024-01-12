import 'package:flutter/material.dart';
import 'package:todo_app/feature/model/todo_model.dart';
import 'package:todo_app/product/constants/index.dart';
import 'package:todo_app/product/extensions/index.dart';

class DateTimeContainer extends StatelessWidget {
  const DateTimeContainer({super.key, required this.model});

  final TodoModel model;

  @override
  Widget build(BuildContext context) {
    final date = model.date;
    final hour = model.hour;
    return date!.isNotEmpty || hour!.isNotEmpty

        /// Date Container
        ? Container(
            width: context.getWidth(factor: .8),
            padding: context.paddings.verticalMedium,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: context.borders.onlyTop,
              border: Border.all(color: model.isCompleted ? AppColors.greenColor : AppColors.greyLight, width: 2),
            ),
            child: Row(
              mainAxisAlignment: date.isEmpty || hour!.isEmpty ? MainAxisAlignment.center : MainAxisAlignment.spaceEvenly,
              children: [
                date.isNotEmpty

                    /// To do Date
                    ? Text(
                        '${AppStrings.date}: $date',
                        style: model.isCompleted
                            ? context.textStyles.bodySmall.copyWith(
                                color: AppColors.redColor,
                                decoration: TextDecoration.lineThrough,
                              )
                            : context.textStyles.bodySmall.copyWith(
                                color: AppColors.blackColor,
                              ),
                      )
                    : const SizedBox.shrink(),
                hour!.isNotEmpty

                    /// To do Hour
                    ? Text(
                        '${AppStrings.hour}: $hour',
                        style: model.isCompleted
                            ? context.textStyles.bodySmall.copyWith(
                                color: AppColors.redColor,
                                decoration: TextDecoration.lineThrough,
                              )
                            : context.textStyles.bodySmall.copyWith(
                                color: AppColors.blackColor,
                              ),
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          )
        : const SizedBox.shrink();
  }
}
