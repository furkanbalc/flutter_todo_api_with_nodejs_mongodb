import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/feature/view_model/home_provider.dart';
import 'package:todo_app/product/constants/index.dart';
import 'package:todo_app/product/extensions/index.dart';
import 'package:todo_app/product/widgets/buttons/index.dart';
import 'package:todo_app/product/widgets/text_field/custom_text_field.dart';

class AddFormFields extends StatelessWidget {
  const AddFormFields({super.key});

  @override
  Widget build(BuildContext context) {
    final watch = context.watch<HomeProvider>();
    final read = context.read<HomeProvider>();
    return Column(
      children: [
        /// Title Field
        CustomTextField(
          onChanged: watch.setTitle,
          textInputAction: TextInputAction.next,
          hintText: AppStrings.labelTitle,
        ),
        context.sizedBoxHeightMedium,

        /// Description Field
        CustomTextField(
          onChanged: watch.setDesc,
          textInputAction: TextInputAction.next,
          minLines: 4,
          maxLines: 4,
          hintText: AppStrings.labelDesc,
        ),
        context.sizedBoxHeightMedium,
        Row(
          children: [
            /// Date Field & Date IconButton
            Expanded(
              child: Row(
                children: [
                  /// Date IconButton
                  CustomIconButton(
                    onPressed: () {
                      read.setDate(context);
                    },
                    icon: Icons.date_range_outlined,
                    iconColor: AppColors.greyPrimary,
                  ),

                  /// Date Field
                  Expanded(
                    child: CustomTextField(
                      hintText: watch.date.isNotEmpty ? watch.date : AppStrings.date,
                      onPressed: () => read.setDate(context),
                      readOnly: true,
                    ),
                  ),
                ],
              ),
            ),

            /// Hour Field & Hour IconButton
            Expanded(
              child: Row(
                children: [
                  /// Hour IconButton
                  CustomIconButton(
                      onPressed: () {
                        read.setHour(context);
                      },
                      icon: Icons.timer_sharp,
                      iconColor: AppColors.greyPrimary),

                  /// Hour Field
                  Expanded(
                    child: CustomTextField(
                      hintText: watch.hour.isNotEmpty ? watch.hour : AppStrings.hour,
                      onPressed: () => read.setHour(context),
                      readOnly: true,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
