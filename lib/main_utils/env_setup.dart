import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../common_widget/values/values.dart';
import '../firebase_options.dart';
import 'build_config.dart';

abstract class Env {
  Env() {
    _init();
  }

  void _init() {
    runZonedGuarded(() async {
      WidgetsFlutterBinding.ensureInitialized();
      Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
      await BuildConfig.init(flavor: getEnv());
      // HttpOverrides.global = MyHttpOverrides();
      await onInjection();
      AppStyles.styleDefault();
      final app = await onCreateWidget();
      return runApp(app);
    }, (error, stack) => onError);
  }

  Future<void> onInjection();

  FutureOr<Widget> onCreateWidget();

  String getEnv();

  void onError(Object error, StackTrace stack);
}
