import 'package:flutter/material.dart';
import 'package:preload_page_view/preload_page_view.dart';
import 'package:provider/provider.dart';
import 'package:tiktok_clone/common/utils/utils.dart';
import 'package:tiktok_clone/presentations/modules/feed_screen/feed_bloc.dart';
import 'package:tiktok_clone/presentations/modules/feed_screen/feed_item_ui_model.dart';
import 'package:tiktok_clone/presentations/modules/feed_screen/module/video_widget.dart';

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
  late FeedBloc _bloc;
  late PageController swipeController;
  bool pageIsScrolling = false;

  @override
  void initState() {
    super.initState();
    _bloc = Provider.of<FeedBloc>(context, listen: false);
    swipeController = PageController(initialPage: 0, viewportFraction: 1);

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      swipeController.position.addListener(() {
        if (swipeController.position.pixels == 0) {
          _bloc.setStop(true);
        } else {
          //bnaws stop
          _bloc.setStop(false);
        }
      });
    });
    _bloc.refresh();
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
              return FeedWidget(
                bloc: _bloc,
              );
            } else {
              return const Center(child: Text('Profile Page'));
            }
          }),
    );
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

class FeedWidget extends StatefulWidget {
  final FeedBloc bloc;
  const FeedWidget({super.key, required this.bloc});

  @override
  State<FeedWidget> createState() => _FeedWidgetState();
}

class _FeedWidgetState extends State<FeedWidget>
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
      print('=====$event');
      if (event) {
        feedItem?.controller?.setPlay();
      } else {
        feedItem?.controller?.setStop();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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

  void disposeOldestPage(int currentIndex) {}

  Future<void> setVideoController(FeedItemUIModel item) async {
    await feedItem?.controller.setStop();
    feedItem = item;
    if (feedItem?.controller != null && !(feedItem?.isSuccessLoaded ?? false)) {
      await feedItem?.loadingController();
    }

    await feedItem?.controller.setPlay();
  }

  @override
  bool get wantKeepAlive => true;
}
