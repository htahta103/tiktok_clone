import 'package:flutter/material.dart';
import 'package:rxdart/subjects.dart';
import 'package:tiktok_clone/common/utils/utils.dart';
import 'package:tiktok_clone/common_widget/values/values.dart';
import 'package:tiktok_clone/presentations/modules/feed_screen/feed_item_ui_model.dart';
import 'package:tiktok_clone/presentations/modules/feed_screen/module/video_scroll_view_widget/content_widget.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  final FeedItemUIModel feedItem;
  final int index;
  const VideoWidget({super.key, required this.feedItem, required this.index});

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late BehaviorSubject<bool> isPauseController;
  late Function() stopListener;
  @override
  void initState() {
    super.initState();
    isPauseController = BehaviorSubject();
    stopListener = () {
      if (widget.feedItem.isPlaying) {
        isPauseController.sink.add(false);
      } else {
        isPauseController.sink.add(true);
      }
    };
    loadData();
  }

  void loadData() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      try {
        await widget.feedItem.loadingController();

        if (widget.index == 0) widget.feedItem.controller?.setPlay();
        widget.feedItem.controller?.addListener(stopListener);
      } catch (e) {}
    });
  }

  @override
  void didUpdateWidget(covariant VideoWidget oldWidget) {
    loadData();

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        stream: widget.feedItem.isLoadedStream,
        builder: (context, snap) {
          if (snap.data ?? false) {
            return Stack(
              children: [
                InkWell(
                    onTap: () async {
                      await widget.feedItem.controller.onTapVideo();
                    },
                    child: VideoPlayer(widget.feedItem.controller!)),
                Align(
                  alignment: AlignmentDirectional.bottomStart,
                  child: VideoContentWidget(
                    data: widget.feedItem,
                  ),
                ),
                playButton()
              ],
            );
          } else {
            return const Center(child: Text('waiting'));
          }
        });
  }

  Widget playButton() {
    return StreamBuilder<bool>(
        stream: isPauseController.stream,
        builder: (context, snap) {
          return snap.data ?? false
              ? InkWell(
                  onTap: () async {
                    await widget.feedItem.controller.onTapVideo();
                  },
                  child: Center(
                    child: Icon(
                      Icons.play_arrow_rounded,
                      color: AppColors.white30,
                      size: 100.h,
                    ),
                  ),
                )
              : const SizedBox();
        });
  }

  @override
  void dispose() {
    widget.feedItem.controller?.removeListener(stopListener);
    widget.feedItem.dispose();
    isPauseController.close();
    super.dispose();
  }
}
