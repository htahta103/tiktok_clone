part of utils;

extension VideoExtension on VideoPlayerController? {
  Future setPlay() async {
    if (this?.value == null) return;
    if (!this!.value.isPlaying) await this!.play();
  }

  Future setStop() async {
    if (this?.value == null) return;
    if (this!.value.isPlaying) await this!.pause();
  }

  Future reset() async {
    if (this?.value == null) return;

    if (this!.value.isPlaying) await this!.pause();
    await this!.seekTo(Duration.zero);
  }

  Future onTapVideo() async {
    if (!this!.value.isPlaying) {
      await this!.play();
    } else {
      await this!.pause();
    }
  }
}
