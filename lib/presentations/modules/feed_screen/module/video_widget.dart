import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rxdart/subjects.dart';
import 'package:tiktok_clone/common/utils/utils.dart';
import 'package:tiktok_clone/common_widget/values/values.dart';
import 'package:tiktok_clone/presentations/modules/feed_screen/feed_item_ui_model.dart';
import 'package:tiktok_clone/presentations/modules/feed_screen/module/video_scroll_view_widget/action_buttons/heart_animation.dart';
import 'package:tiktok_clone/presentations/modules/feed_screen/module/video_scroll_view_widget/content_widget.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  final FeedItemUIModel feedItem;
  final int index;
  const VideoWidget({super.key, required this.feedItem, required this.index});

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget>
    with TickerProviderStateMixin {
  late BehaviorSubject<bool> isPauseController;
  late BehaviorSubject<bool> likeBtnController;
  late BehaviorSubject<bool> heartController;
  late Function() stopPlayerListener;

  late AnimationController cdSpinController;
  late Function() stopCDSpinListener;

  bool doubleTapDebouce = false;
  Timer? timer;
  @override
  void initState() {
    super.initState();
    isPauseController = BehaviorSubject();
    likeBtnController = BehaviorSubject();
    heartController = BehaviorSubject();

    cdSpinController = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat(reverse: false);
    stopCDSpinListener = () {
      if (widget.feedItem.isPlaying) {
        if (!cdSpinController.isAnimating) {
          cdSpinController.repeat(reverse: false);
        }
      } else {
        if (cdSpinController.isAnimating) {
          cdSpinController.stop();
        }
      }
    };

    stopPlayerListener = () {
      if (widget.feedItem.isPlaying) {
        isPauseController.sink.add(false);
      } else {
        isPauseController.sink.add(true);
      }
    };
    loadData();
  }

  void doubleTapToLike() {
    doubleTapDebounce();
    likeBtnController.sink.add(true);
    heartController.sink.add(true);
  }

  void loadData() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      try {
        await widget.feedItem.loadingController();

        if (widget.index == 0) widget.feedItem.controller?.setPlay();
        widget.feedItem.controller?.addListener(stopPlayerListener);
        widget.feedItem.controller?.addListener(stopCDSpinListener);
      } catch (e) {}
    });
  }

  @override
  void didUpdateWidget(covariant VideoWidget oldWidget) {
    loadData();

    super.didUpdateWidget(oldWidget);
  }

  void doubleTapDebounce() {
    doubleTapDebouce = true;
    if (timer == null || !(timer?.isActive ?? false)) {
      timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        doubleTapDebouce = false;
        timer.cancel();
      });
    } else {
      timer?.cancel();
      timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        doubleTapDebouce = false;
        timer.cancel();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        stream: widget.feedItem.isLoadedStream,
        builder: (context, snap) {
          if (snap.data ?? false) {
            return Stack(
              children: [
                GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () async {
                      if (!doubleTapDebouce) {
                        print('doubleTapDebouce + $doubleTapDebouce');
                        await widget.feedItem.controller.onTapVideo();
                      }
                    },
                    onDoubleTap: () {
                      doubleTapToLike();
                    },
                    onTapDown: (details) {
                      print(details.globalPosition);
                    },
                    child: VideoPlayer(widget.feedItem.controller!)),
                Align(
                  alignment: AlignmentDirectional.bottomStart,
                  child: VideoContentWidget(
                    data: widget.feedItem,
                    cdSpinController: cdSpinController,
                    likeController: likeBtnController.stream,
                  ),
                ),
                playButton(),
                HeartAnimation(
                    animateStream: heartController,
                    duration: const Duration(seconds: 3))
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
    widget.feedItem.controller?.removeListener(stopPlayerListener);
    widget.feedItem.controller?.removeListener(stopCDSpinListener);
    widget.feedItem.dispose();
    isPauseController.close();
    likeBtnController.close();
    heartController.close();
    cdSpinController.dispose();
    super.dispose();
  }
}
