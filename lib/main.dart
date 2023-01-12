import 'dart:async';
import 'dart:ui';

import 'package:tiktok_clone/common_widget/values/values.dart';
import 'package:tiktok_clone/main_utils/application.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/common/utils/utils.dart';
import 'package:tiktok_clone/common_widget/log/log_util.dart';
import 'package:tiktok_clone/di/di.dart';

import 'main_utils/build_config.dart';
import 'main_utils/env_setup.dart';

void main() => Main();

class Main extends Env {
  @override
  String getEnv() {
    return Flavor.DEVELOPMENT;
  }

  @override
  Future<void> onInjection() => BaseApp.onInjection();

  @override
  FutureOr<Widget> onCreateWidget() => BaseApp.onCreateWidget();

  @override
  void onError(Object error, StackTrace stack) => BaseApp.onError;
}

class BaseApp {
  static Future<void> onInjection() async {
    try {
      //TODO inject and prepare data
      await Injection.inject();

      ScreenUtil.init(MediaQueryAppModel(
        devicePixelRatio: MediaQueryData.fromWindow(window).devicePixelRatio,
        width: MediaQueryData.fromWindow(window).size.width,
        height: MediaQueryData.fromWindow(window).size.height,
        textScaleFactor: MediaQueryData.fromWindow(window).textScaleFactor,
      ));
    } catch (e) {
      Log.error('main.dart', e);
    }
  }

  static FutureOr<Widget> onCreateWidget() async {
    ErrorWidget.builder = (FlutterErrorDetails details) {
      Zone.current.handleUncaughtError(details.exception, details.stack!);
      return MaterialApp(
        title: 'App Error',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Container(
          color: Colors.white,
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Text(
                details.toString(),
                style: const TextStyle(color: AppColors.primary, fontSize: 12),
              )
            ],
          ),
        ),
      );
    };
    imageCache.clear();
    return const Application();
  }

  static void onError(Object error, StackTrace stack) {
    if (kDebugMode) {
      print(stack.toString());
      print(error.toString());
    }
    Log.error('main.dart', error.toString());
    // FirebaseCrashlyticsService.recordError(error, stack);
  }
}
