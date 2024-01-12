import 'package:flutter/material.dart';
import 'package:todo_app/feature/view/home_view.dart';
import 'package:todo_app/product/enums/index.dart';
import 'package:todo_app/product/extensions/index.dart';
import 'package:todo_app/product/utility/mixin/navigate_manager.dart';
import 'package:todo_app/product/widgets/images/custom_image_widget.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with NavigatorManager {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((value) {
      navigatePushReplacement(context, const HomeView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            /// Splash Icons
            Column(
              children: [
                CustomImageWidget(imageName: AppImages.checkmark.toImage, color: Theme.of(context).primaryColor),
                context.sizedBoxHeightMedium,
                CustomImageWidget(imageName: AppImages.doIt.toImage, color: Theme.of(context).primaryColor),
              ],
            ),
            Center(child: CircularProgressIndicator(color: Theme.of(context).primaryColor)),
          ],
        ),
      ),
    );
  }
}
