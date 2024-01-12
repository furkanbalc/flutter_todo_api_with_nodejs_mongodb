import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomCenteredLottie extends StatelessWidget {
  const CustomCenteredLottie({
    super.key,
    required this.lottie,
    this.boxFit,
    this.height,
  });
  final String lottie;
  final BoxFit? boxFit;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LottieBuilder.asset(
        lottie,
        fit: boxFit ?? BoxFit.cover,
        height: height,
      ),
    );
  }
}
