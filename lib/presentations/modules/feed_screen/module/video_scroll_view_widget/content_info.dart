import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/subjects.dart';
import 'package:tiktok_clone/common/utils/utils.dart';
import 'package:tiktok_clone/common_widget/values/values.dart';
import 'package:tiktok_clone/data/models/video_demo_model/video_api.dart';
import 'package:tiktok_clone/presentations/modules/feed_screen/feed_item_ui_model.dart';

import '../../../../../common_widget/buttons/m_text_button.dart';
import '../../../../../common_widget/common_widget.dart';

class ContentInfo extends StatefulWidget {
  final FeedItemUIModel uiModel;
  const ContentInfo({super.key, required this.uiModel});

  @override
  State<ContentInfo> createState() => _ContentInfoState();
}

class _ContentInfoState extends State<ContentInfo> {
  late VideoDemoAPI data;
  late FeedItemUIModel uiModel;
  late List<TextSpan> textSpans;
  late BehaviorSubject<bool> isShowMoreContentCtrl;
  @override
  void initState() {
    super.initState();
    isShowMoreContentCtrl = BehaviorSubject();
    uiModel = widget.uiModel;
    data = uiModel.data;
    textSpans = [];
    for (var item in uiModel.content) {
      if (item.isHashtag) {
        TextSpan(
            text: item.value,
            style: const TextStyle(),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                //TODO hastag click
                print('tap hastag ${item.value} ne');
              });
      } else {
        textSpans.add(TextSpan(text: item.value));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        stream: isShowMoreContentCtrl.stream,
        builder: (context, snap) {
          var isShowMore = (snap.data ?? false) || !uiModel.isOverflow;
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(15.w, 15.h, 75.w, 0.h),
                child: Row(
                  children: [
                    MTextButton(onPressed: () {}, text: '@Karent'),
                    MText(
                        text:
                            ' · ${DateUtil.convertDateTimeToString(DateTime.now(), newFormat: dayMonth)}'),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(gradient: AppColors.contentGradient),
                padding: EdgeInsets.fromLTRB(15.w, 15.h, 75.w, 20.h),
                child: Row(
                  children: [
                    Expanded(
                      child: RichText(
                        maxLines: isShowMore ? 6 : 1,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          children: textSpans,
                        ),
                      ),
                    ),
                    uiModel.isOverflow
                        ? MTextButton(
                            text: isShowMore ? 'Thu Gon' : 'Xem Them',
                            onPressed: () {
                              isShowMoreContentCtrl.sink.add(!isShowMore);
                            },
                          )
                        : const SizedBox()
                  ],
                ),
              ),
            ],
          );
        });
  }

  @override
  void dispose() {
    isShowMoreContentCtrl.close();
    super.dispose();
  }
}
