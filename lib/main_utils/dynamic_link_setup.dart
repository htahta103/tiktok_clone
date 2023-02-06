import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

class DynamicLinkSetup {
  static Future<void> initDynamicLinks() async {
    final PendingDynamicLinkData? data =
        await FirebaseDynamicLinks.instance.getInitialLink();
    final Uri? deepLink = data?.link;

    handleDynamicLink(deepLink);
    FirebaseDynamicLinks.instance.onLink.listen(
        (PendingDynamicLinkData dynamicLink) async {
      final Uri deepLink = dynamicLink.link;

      handleDynamicLink(deepLink);
    }, onError: (e) async {
      print('Dynamic link error: +${e.message}');
    });
  }

  static void handleDynamicLink(Uri? link) {
    print('dynamic link + $link');
  }
}
