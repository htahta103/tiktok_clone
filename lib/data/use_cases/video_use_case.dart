import 'package:tiktok_clone/data/repos/video_repo.dart';

import '../models/video_demo_model/video_api.dart';

abstract class VideoUseCase {
  Future<List<VideoDemoAPI>> getVideos();
}

class VideoUseCaseImpl implements VideoUseCase {
  final VideoRepo videoRepo;

  VideoUseCaseImpl(this.videoRepo);
  @override
  Future<List<VideoDemoAPI>> getVideos() async {
    try {
      return await videoRepo.getVideos();
    } catch (e) {
      return [];
    }
  }
}
