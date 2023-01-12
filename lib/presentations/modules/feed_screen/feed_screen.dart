import 'package:flutter/material.dart';
import 'package:preload_page_view/preload_page_view.dart';
import 'package:provider/provider.dart';
import 'package:tiktok_clone/common/utils/utils.dart';
import 'package:tiktok_clone/presentations/modules/feed_screen/feed_bloc.dart';
import 'package:tiktok_clone/presentations/modules/feed_screen/feed_item_ui_model.dart';
import 'package:tiktok_clone/presentations/modules/feed_screen/module/video_widget.dart';
import 'package:video_player/video_player.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();

  static Provider<FeedBloc> instance() {
    return Provider<FeedBloc>(
      create: (_) => FeedBloc(),
      builder: (context, child) => const FeedScreen(),
      dispose: (_, bloc) => bloc.dispose,
    );
  }
}

class _FeedScreenState extends State<FeedScreen> {
  late FeedBloc bloc;
  late PageController swipeController;
  bool pageIsScrolling = false;
  VideoPlayerController? videoController;
  @override
  void initState() {
    super.initState();
    bloc = Provider.of<FeedBloc>(context, listen: false);
    swipeController = PageController(initialPage: 0, viewportFraction: 1);

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      swipeController.position.addListener(() {
        if (swipeController.position.pixels == 0) {
          // videoController?.play();
        } else {
          videoController?.pause();
          print('Stop--------');
        }
      });
    });
    bloc.refresh();
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width.floor();
    return Scaffold(
      //OnSwipe
      body: PageView.builder(
          controller: swipeController,
          itemCount: 2,
          itemBuilder: (context, index) {
            if (index == 0) {
              return FeedView();
            } else {
              return const Center(child: Text('Profile Page'));
            }
          }),
    );
  }

  Widget FeedView() {
    return StreamBuilder<List<FeedItemUIModel>>(
        stream: bloc.videos,
        builder: (context, snap) {
          if (snap.hasData && (snap.data?.isNotEmpty ?? false)) {
            var videos = snap.data!;
            setVideoController(videos[0].controller);

            return RefreshIndicator(
              backgroundColor: Colors.red,
              color: Colors.blue,
              onRefresh: () async {
                await bloc.refresh();
              },
              child: PreloadPageView.builder(
                  physics: const CustomPageViewScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  controller: PreloadPageController(),
                  itemCount: videos.length,
                  onPageChanged: (value) async {
                    await setVideoController(videos[value].controller);
                  },
                  preloadPagesCount: 10,
                  itemBuilder: (context, index) {
                    return VideoWidget(
                      feedItem: videos[index],
                      index: index,
                    );
                  }),
            );
          } else {
            return const SizedBox.shrink();
          }
        });
  }

  Future<void> setVideoController(VideoPlayerController? ctrl) async {
    // await ctrl?.play();
    await videoController?.setStop();
    videoController = ctrl;
    await videoController?.play();
  }
}

class CustomPageViewScrollPhysics extends ScrollPhysics {
  const CustomPageViewScrollPhysics({ScrollPhysics? parent})
      : super(parent: parent);

  @override
  CustomPageViewScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return CustomPageViewScrollPhysics(parent: buildParent(ancestor));
  }

  @override
  SpringDescription get spring => const SpringDescription(
        mass: 80,
        stiffness: 100,
        damping: 1,
      );
}
