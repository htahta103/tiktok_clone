import 'dart:async';
import 'package:tiktok_clone/common_widget/log/log_util.dart';
import 'package:uni_links/uni_links.dart';

class DeepLinkSetup {
  static StreamSubscription? linkSub;
  static StreamSubscription? uriSub;
  static Future<void> initUniLink() async {
    try {
      final initialLink = getInitialLink();
      print('receive link + $initialLink');

      //link when open app
      linkSub = linkStream.listen((String? link) {
        print('receive link + $link');
      }, onError: (e) {});
    } catch (e) {
      Log.error('Initial Link failed', e);
    }
  }
}
