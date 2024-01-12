import 'package:flutter/material.dart';

mixin NavigatorManager {
  void navigatePushReplacement(BuildContext context, Widget widget) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => widget));
  }

  void navigatePush(BuildContext context, Widget widget) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
  }

  void navigatePopAndPush(BuildContext context, Widget widget) {
    Navigator.of(context).pop();
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
  }

  void navigatePop(BuildContext context) {
    Navigator.of(context).pop();
  }
}
