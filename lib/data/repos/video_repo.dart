import '../remote_model/video/video_remote.dart';
import '../models/video_demo_model/video_api.dart';

abstract class VideoRepo {
  Future<List<VideoDemoAPI>> getVideos();
}

class VideoRepoImpl implements VideoRepo {
  final VideoRemote videoRemote;

  VideoRepoImpl(this.videoRemote);
  @override
  Future<List<VideoDemoAPI>> getVideos() async {
    try {
      return await videoRemote.getVideos();
    } catch (e) {
      rethrow;
    }
  }
}
