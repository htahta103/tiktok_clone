import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiktok_clone/presentations/modules/feed_screen/feed_bloc.dart';
import 'package:tiktok_clone/presentations/modules/feed_screen/module/video_scroll_view_widget/video_scroll_view.dart';

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
      swipeController.addListener(() {
        print(swipeController.position.pixels);
        if (swipeController.position.pixels == 0) {
          _bloc.setStop(true);
        } else {
          // print("//bnaws stop");
          _bloc.setStop(false);
        }
      });
    });
    _bloc.refresh();
  }

  @override
  void didUpdateWidget(covariant FeedScreen oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    swipeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //OnSwipe
      body: PageView.builder(
          controller: swipeController,
          itemCount: 2,
          itemBuilder: (context, index) {
            if (index == 0) {
              return VideoScrollView(
                bloc: _bloc,
              );
            } else {
              return const Center(child: Text('Profile Page'));
            }
          }),
    );
  }
}
