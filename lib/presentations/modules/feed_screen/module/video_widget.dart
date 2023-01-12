import 'package:flutter/material.dart';
import 'package:tiktok_clone/presentations/modules/feed_screen/feed_item_ui_model.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  final FeedItemUIModel feedItem;
  final int index;
  const VideoWidget({super.key, required this.feedItem, required this.index});

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await widget.feedItem.loadingController();
    });
  }

  @override
  void didUpdateWidget(covariant VideoWidget oldWidget) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await oldWidget.feedItem.dispose();
      await widget.feedItem.loadingController();
    });

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        stream: widget.feedItem.isLoadedStream,
        builder: (context, snap) {
          if (snap.data ?? false) {
            return VideoPlayer(widget.feedItem.controller!);
          } else {
            return const Center(child: Text('waiting'));
          }
        });
  }

  @override
  void dispose() {
    print(' ==== dispose + index  : ${widget.index} ');
    widget.feedItem.dispose();
    super.dispose();
  }
}
