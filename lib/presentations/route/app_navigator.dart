import 'package:flutter/material.dart';

class AppNavigator {
  AppNavigator._();

  static Future<void> getBack(BuildContext context, {dynamic content}) async {
    if (Navigator.canPop(context)) {
      Navigator.pop(context, content);
    }
  }

  static Future<void> closeKeyboard() async {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}
