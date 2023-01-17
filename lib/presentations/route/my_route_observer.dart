import 'package:tiktok_clone/common_widget/log/log_util.dart';
import 'package:flutter/material.dart';

class MyRouteObserver extends RouteObserver<PageRoute<dynamic>> {
  static String? currentRootName = 'root';

  void _sendScreenView(PageRoute<dynamic> route) {
    currentRootName = route.settings.name ?? 'none';
    Log.info('MyRouteObserve', 'screenName $currentRootName');

    //TODO when navigate to new screen
    // FirebaseAnalyticsService.logEvent(eventName: 'screen_view', parameters: {
    //   'name': '${currentRootName?.replaceAll('/', '_').replaceAll('-', '_')}'
    // });
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    if (route is PageRoute) {
      _sendScreenView(route);
    }
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (newRoute is PageRoute) {
      _sendScreenView(newRoute);
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    if (previousRoute is PageRoute && route is PageRoute) {
      // _sendScreenView(previousRoute);
    }
  }
}
