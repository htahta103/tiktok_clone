import 'dart:ui';

import 'package:flutter/material.dart';

import '../values/values.dart';

class IphoneXBottomBarSpace extends StatelessWidget {
  static double getBottomBarHeight() {
    return window.padding.bottom > 0
        ? AppDimens.kHeightBottom * 1.3
        : AppDimens.kHeightBottom;
  }

  static double getContentBottomBarHeight() {
    return AppDimens.kHeightBottom;
  }

  static double getIPhoneXPaddingHeight() {
    return window.padding.bottom > 0 ? AppDimens.kHeightBottom * 0.3 : 0;
  }

  const IphoneXBottomBarSpace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getBottomBarHeight(),
    );
  }
}
