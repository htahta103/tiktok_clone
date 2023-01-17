import 'package:flutter/material.dart';
import 'package:preload_page_view/preload_page_view.dart';
import 'package:tiktok_clone/common/utils/utils.dart';

import '../../feed_bloc.dart';
import '../../feed_item_ui_model.dart';
import '../video_widget.dart';
import 'custom_page_view_scroll_physic.dart';

class VideoScrollView extends StatefulWidget {
  final FeedBloc bloc;
  const VideoScrollView({super.key, required this.bloc});

  @override
  State<VideoScrollView> createState() => _VideoScrollViewState();
}

class _VideoScrollViewState extends State<VideoScrollView>
    with AutomaticKeepAliveClientMixin {
  late FeedBloc bloc;
  FeedItemUIModel? feedItem;
  int preloadItem = 8;
  int lastPage = 0;
  @override
  void initState() {
    super.initState();
    bloc = widget.bloc;
    bloc.stopStream.listen((event) {
      if (event) {
        feedItem?.controller?.setPlay();
      } else {
        feedItem?.controller?.setStop();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return StreamBuilder<List<FeedItemUIModel>>(
        stream: bloc.videos,
        builder: (context, snap) {
          if (snap.hasData && (snap.data?.isNotEmpty ?? false)) {
            var videos = snap.data!;
            setVideoController(videos[0]);

            return StreamBuilder<bool>(
                stream: bloc.refreshStream,
                builder: (context, snap) {
                  return RefreshIndicator(
                    backgroundColor: Colors.red,
                    color: Colors.blue,
                    onRefresh: () async {
                      await bloc.refresh();
                    },
                    child: PreloadPageView.builder(
                        physics: const CustomPageViewScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        controller: PreloadPageController(keepPage: true),
                        itemCount: videos.length,
                        onPageChanged: (value) async {
                          await setVideoController(videos[value]);
                          lastPage = value;
                        },
                        preloadPagesCount: preloadItem,
                        itemBuilder: (context, index) {
                          return VideoWidget(
                            feedItem: videos[index],
                            index: index,
                          );
                        }),
                  );
                });
          } else {
            return feedItem != null
                ? VideoWidget(feedItem: feedItem!, index: 0)
                : const Center(child: Text('Loading ròi '));
          }
        });
  }

  Future<void> setVideoController(FeedItemUIModel item) async {
    await feedItem?.controller?.setStop();
    feedItem = item;
    if (feedItem?.controller != null && !(feedItem?.isSuccessLoaded ?? false)) {
      await feedItem?.loadingController();
    }

    await feedItem?.controller.setPlay();
  }

  @override
  bool get wantKeepAlive => true;
}
