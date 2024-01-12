import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/feature/model/todo_model.dart';
import 'package:todo_app/feature/view_model/home_provider.dart';
import 'package:todo_app/feature/widgets/date_time_container.dart';
import 'package:todo_app/product/constants/index.dart';
import 'package:todo_app/product/extensions/index.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({super.key, required this.model});
  final TodoModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Date Time Container
        DateTimeContainer(model: model),

        /// To do Card

        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(
              color: model.isCompleted ? AppColors.greenColor : AppColors.whiteColor,
              width: 3,
            ),
          ),
          margin: context.paddings.zero,
          elevation: 5,
          child: ListTile(
            /// To do CheckBox
            leading: Checkbox(
              value: model.isCompleted,
              onChanged: (value) {
                context.read<HomeProvider>().setIsCompleted(model);
              },
            ),

            /// To do Title
            title: Text(
              model.title!,
              style: model.isCompleted
                  ? context.textStyles.titleMedium.copyWith(decoration: TextDecoration.lineThrough, color: AppColors.redColor)
                  : context.textStyles.titleMedium,
            ),

            /// To do Desc
            subtitle: Text(
              model.desc!,
              style: model.isCompleted
                  ? context.textStyles.bodyMedium.copyWith(decoration: TextDecoration.lineThrough, color: AppColors.redColor)
                  : context.textStyles.bodyMedium,
            ),

            /// To do Delete Icons
            trailing: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.arrow_back_ios),
                Icon(Icons.delete),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
