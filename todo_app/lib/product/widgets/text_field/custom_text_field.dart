import 'package:flutter/material.dart';
import 'package:todo_app/product/constants/index.dart';
import 'package:todo_app/product/extensions/index.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.onChanged,
    this.keyboardType,
    this.textInputAction,
    this.hintText,
    this.textAlign,
    this.maxLines,
    this.maxLenght,
    this.minLines,
    this.readOnly,
    this.onPressed,
    this.labelText,
  });

  final TextEditingController? controller;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final VoidCallback? onPressed;
  final String? hintText;
  final String? labelText;
  final TextAlign? textAlign;
  final bool? readOnly;
  final int? maxLines;
  final int? minLines;
  final int? maxLenght;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onPressed,
      maxLines: maxLines ?? 1,
      minLines: minLines ?? 1,
      maxLength: maxLenght,
      controller: controller,
      onChanged: onChanged,
      keyboardType: keyboardType,
      readOnly: readOnly ?? false,
      textInputAction: textInputAction,
      textAlign: textAlign ?? TextAlign.start,
      style: context.textStyles.titleMedium.copyWith(color: AppColors.blackColor),
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        hintStyle: context.textStyles.titleSmall.copyWith(color: AppColors.greyPrimary),
      ),
    );
  }
}
