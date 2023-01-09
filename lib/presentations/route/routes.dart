import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../common/app_general/constants.dart';
import '../modules/splash_screen/splash_screen.dart';

class Routes {
  static const String splashScreen = '/';

  static Route<dynamic> getRouteGenerate(RouteSettings settings) {
    var args = (settings.arguments ?? {}) as Map<dynamic, dynamic>;
    switch (settings.name) {
      case Routes.splashScreen:
        return _buildRouteFade(settings, const SplashScreen());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: const Center(
            child: Text('Page not found'),
          ),
        );
      },
    );
  }

  static PageRoute<dynamic> _buildRouteFade(
      RouteSettings settings, Widget builder,
      {bool? turnOffAnimation = false}) {
    if ((isIos || isAndroid) && !(turnOffAnimation ?? false)) {
      return CupertinoPageRoute(
        builder: (context) => builder,
        settings: settings,
      );
    } else {
      return _FadedTransitionRoute(
        widget: builder,
        settings: settings,
      );
    }
  }
}

class _FadedTransitionRoute extends PageRouteBuilder<dynamic> {
  final Widget widget;
  @override
  final RouteSettings settings;

  _FadedTransitionRoute({
    required this.widget,
    required this.settings,
  }) : super(
          settings: settings,
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return widget;
          },
          transitionDuration: const Duration(milliseconds: 100),
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return FadeTransition(
              opacity: CurvedAnimation(
                parent: animation,
                curve: Curves.easeOut,
              ),
              child: child,
            );
          },
        );
}
