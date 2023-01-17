import 'package:tiktok_clone/data/demo_data/video_list.dart';

import '../../models/video_demo_model/video_api.dart';

class VideoRemote {
  Future<List<VideoDemoAPI>> getVideos() async {
    try {
      List<VideoDemoAPI> res = [];
      for (var item in demo_data["videos"] as List) {
        res.add(VideoDemoAPI.fromJson(item));
      }
      return res;
    } catch (e) {
      rethrow;
    }
  }
}
