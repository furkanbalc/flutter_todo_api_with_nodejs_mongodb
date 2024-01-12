import 'package:flutter/material.dart';

extension CustomScreenSizeExtension on BuildContext {
  double getWidth({double factor = 1.0}) {
    return MediaQuery.of(this).size.width * factor;
  }

  double getHeight({double factor = 1.0}) {
    return MediaQuery.of(this).size.height * factor;
  }

  double getAppBarHeight({double factor = 1.0}) {
    return AppBar().preferredSize.height;
  }
}
