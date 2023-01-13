import 'package:flutter/material.dart';
import 'package:tiktok_clone/common/utils/utils.dart';
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
    loadData();
  }

  void loadData() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      try {
        await widget.feedItem.loadingController();
        if (widget.index == 0) widget.feedItem.controller?.setPlay();
      } catch (e) {
        print(' === init Failedddddd  \n ${widget.index}');
      }
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
                VideoPlayer(widget.feedItem.controller!),
                Center(
                    child: Text(
                  widget.index.toString(),
                  style: const TextStyle(
                      backgroundColor: Colors.white,
                      color: Colors.black,
                      fontSize: 40),
                )),
              ],
            );
          } else {
            return const Center(child: Text('waiting'));
          }
        });
  }

  @override
  void dispose() {
    widget.feedItem.dispose();
    super.dispose();
  }
}
