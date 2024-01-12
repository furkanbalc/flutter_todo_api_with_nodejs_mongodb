import 'package:flutter/material.dart';
import 'package:todo_app/product/extensions/index.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.buttonWidth,
  });

  final VoidCallback onPressed;
  final double? buttonWidth;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth ?? double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Padding(
          padding: context.paddings.verticalHigh,
          child: Text(
            text,
            style: context.textStyles.titleLarge,
          ),
        ),
      ),
    );
  }
}
