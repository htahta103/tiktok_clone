import 'package:rxdart/subjects.dart';
import 'package:tiktok_clone/data/models/video_demo_model/video_api.dart';
import 'package:video_player/video_player.dart';

class FeedItemUIModel {
  final VideoDemoAPI data;
  VideoPlayerController? controller;
  bool? isDispose;
  bool isLoading = false;
  bool isSuccessLoaded = false;
  final BehaviorSubject<bool> _isLoadedCtrl = BehaviorSubject();
  Stream<bool> get isLoadedStream => _isLoadedCtrl.stream;

  FeedItemUIModel(this.data);

  Future<void> loadingController() async {
    try {
      isSuccessLoaded = false;
      if (!isLoading && (isDispose ?? true)) {
        await dispose();
        _isLoadedCtrl.sink.add(false);
        isDispose = false;
        controller = VideoPlayerController.network(data.url,
            videoPlayerOptions: VideoPlayerOptions(
                mixWithOthers: true, allowBackgroundPlayback: true));
        await controller?.initialize();
        await controller?.setLooping(true);
        _isLoadedCtrl.sink.add(true);
        isLoading = false;
      }
      isSuccessLoaded = true;
      print(' === init scuess ${data.video_title}');
    } catch (e) {
      isLoading = false;

      var a = e;
      await dispose();
      // await loadingController();
      isSuccessLoaded = false;
      rethrow;
    }
  }

  bool get isPlaying => controller?.value.isPlaying ?? false;

  Future<void> stop() async {
    if (controller?.value.isPlaying ?? false) controller?.pause();
  }

  Future<void> dispose() async {
    if (isDispose ?? true && controller != null) return;
    _isLoadedCtrl.sink.add(false);
    await controller?.pause();
    await controller?.dispose();
    isDispose = true;
  }
}
