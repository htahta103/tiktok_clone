import 'package:rxdart/subjects.dart';
import 'package:tiktok_clone/data/models/video_demo_model/video_api.dart';
import 'package:video_player/video_player.dart';

class FeedItemUIModel {
  final VideoDemoAPI data;
  VideoPlayerController? controller;
  final BehaviorSubject<bool> _isLoadedCtrl = BehaviorSubject();
  Stream<bool> get isLoadedStream => _isLoadedCtrl.stream;

  FeedItemUIModel(this.data) {
    _isLoadedCtrl.sink.add(false);
    controller = VideoPlayerController.network(data.url,
        videoPlayerOptions: VideoPlayerOptions(
            mixWithOthers: true, allowBackgroundPlayback: true));
  }

  Future<void> loadingController() async {
    try {
      await controller?.initialize();
      await controller?.setLooping(true);
      _isLoadedCtrl.sink.add(true);
    } catch (e) {
      var a = e;
    }
  }

  bool get isPlaying => controller?.value.isPlaying ?? false;

  Future<void> stop() async {
    if (controller?.value.isPlaying ?? false) controller?.pause();
  }

  Future<void> dispose() async {
    _isLoadedCtrl.sink.add(false);
    await controller?.pause();
    await controller?.dispose();
  }
}
