import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/feature/view_model/home_provider.dart';
import 'package:todo_app/feature/widgets/add_form_fields.dart';
import 'package:todo_app/product/constants/app_strings.dart';
import 'package:todo_app/product/extensions/index.dart';
import 'package:todo_app/product/utility/mixin/title_field_validator.dart';
import 'package:todo_app/product/utility/mixin/navigate_manager.dart';
import 'package:todo_app/product/widgets/buttons/custom_elevated_button.dart';
import 'package:todo_app/product/widgets/buttons/custom_icon_button.dart';

class AddView extends StatefulWidget {
  const AddView({super.key});

  @override
  State<AddView> createState() => _AddViewState();
}

class _AddViewState extends State<AddView> with NavigatorManager, TitleFieldValidator {
  @override
  Widget build(BuildContext context) {
    final watch = context.watch<HomeProvider>();
    return Scaffold(
      /// appBar
      appBar: _buildAppBar(context),
      body: Padding(
        padding: context.paddings.allMedium,

        /// Add Todo TextFormField
        child: const AddFormFields(),
      ),

      /// Add Todo Fab Location
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      /// Add Todo Fab
      floatingActionButton: _todoAddButton(watch, context),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
        title: const Text(AppStrings.appAddItem),
        centerTitle: true,
        leading: CustomIconButton(
          onPressed: () => navigatePop(context),
          icon: Icons.arrow_back,
        ));
  }

  CustomElevatedButton _todoAddButton(HomeProvider watch, BuildContext context) {
    return CustomElevatedButton(
      onPressed: () => checkTitle(watch, context),
      text: AppStrings.appAddItem,
      buttonWidth: context.getWidth(factor: .9),
    );
  }
}
