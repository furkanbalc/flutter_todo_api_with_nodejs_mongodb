import 'package:flutter/material.dart';
import 'package:todo_app/product/extensions/index.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.iconColor,
    this.backgroundColor,
    this.border,
  });

  final VoidCallback? onPressed;
  final IconData? icon;
  final Color? iconColor;
  final Color? backgroundColor;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
        border: border,
      ),
      child: IconButton(
        onPressed: onPressed,
        padding: context.paddings.zero,
        icon: Icon(icon, color: iconColor ?? Theme.of(context).primaryColor),
      ),
    );
  }
}
