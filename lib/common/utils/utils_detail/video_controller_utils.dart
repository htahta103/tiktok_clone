part of utils;

extension VideoExtension on VideoPlayerController {
  Future setPlay() async {
    if (!value.isPlaying) await play();
  }

  Future setStop() async {
    if (value.isPlaying) await pause();
  }

  Future reset() async {
    if (value.isPlaying) await pause();
    await seekTo(Duration.zero);
  }
}
