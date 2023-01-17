import 'package:flutter/material.dart';
import 'package:rxdart/subjects.dart';
import 'package:tiktok_clone/common/utils/utils.dart';
import 'package:tiktok_clone/common/utils/utils_detail/string_utils.dart';
import 'package:tiktok_clone/common_widget/log/log_util.dart';
import 'package:tiktok_clone/data/use_cases/video_use_case.dart';
import 'package:tiktok_clone/di/di.dart';
import 'package:tiktok_clone/presentations/modules/feed_screen/feed_item_ui_model.dart';

import '../../../common_widget/base/base.dart';

class FeedBloc extends BaseBloc {
  VideoUseCase videoUseCase = getIt.get<VideoUseCase>();

  final BehaviorSubject<int> _swipeIndexCtrl = BehaviorSubject();
  Stream<int> get swipeIndexStream => _swipeIndexCtrl.stream;

  final BehaviorSubject<List<FeedItemUIModel>> _videoListCtrl =
      BehaviorSubject();
  Stream<List<FeedItemUIModel>> get videos => _videoListCtrl.stream;

  final BehaviorSubject<bool> _stopCtrl = BehaviorSubject();
  Stream<bool> get stopStream => _stopCtrl.stream;

  final BehaviorSubject<bool> _refreshCtrl = BehaviorSubject();
  Stream<bool> get refreshStream => _refreshCtrl.stream;

  List<FeedItemUIModel> res = [];

  FeedBloc();
  Future<void> refresh() async {
    try {
      _refreshCtrl.sink.add(true);
      await disposeVideoController();
      res.clear();

      var videos = await videoUseCase.getVideos();
      for (var video in videos) {
        res.add(FeedItemUIModel(
            data: video,
            content: StringUtil.splitStringWithHashtag(video.video_title),
            isOverflow: StringUtil.hasTextOverflow(
                video.video_title, const TextStyle(),
                maxWidth: 500.w, maxLines: 1)));
      }
      _videoListCtrl.sink.add(res);
    } catch (e) {
      Log.error('refresh feed bloc', e);
    } finally {
      _refreshCtrl.sink.add(false);
    }
  }

  Future<void> disposeVideoController() async {
    for (var item in res) {
      item.dispose();
    }
  }

  void setStop(bool isSetStop) {
    _stopCtrl.sink.add(isSetStop);
  }

  @override
  void dispose() {
    _swipeIndexCtrl.close();
    _videoListCtrl.close();
    _stopCtrl.close();
  }
}
