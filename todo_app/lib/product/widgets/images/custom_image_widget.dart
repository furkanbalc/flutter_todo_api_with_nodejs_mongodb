import 'package:flutter/material.dart';

class CustomImageWidget extends StatelessWidget {
  const CustomImageWidget({
    super.key,
    required this.imageName,
    this.scale,
    this.fit,
    this.width,
    this.color,
  });

  final String imageName;
  final Color? color;
  final double? scale;
  final double? width;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Image.asset(imageName, scale: scale, fit: fit, width: width, color: color);
  }
}
