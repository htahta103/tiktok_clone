import 'package:flutter/material.dart';
import 'package:tiktok_clone/common/utils/utils.dart';
import 'package:tiktok_clone/common/values/assets.gen.dart';
import 'package:tiktok_clone/common_widget/values/values.dart';
import 'package:tiktok_clone/presentations/modules/feed_screen/feed_item_ui_model.dart';
import 'package:tiktok_clone/presentations/modules/feed_screen/module/video_scroll_view_widget/content_info.dart';

import '../../../../../common_widget/buttons/like_button/like_button.dart';
import '../../../../../common_widget/common_widget.dart';

class VideoContentWidget extends StatefulWidget {
  final FeedItemUIModel data;
  const VideoContentWidget({super.key, required this.data});

  @override
  State<VideoContentWidget> createState() => _VideoContentWidgetState();
}

class _VideoContentWidgetState extends State<VideoContentWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController cdSpinController;
  late AnimationController likeBtnCtrl;

  late Function() func;
  @override
  void initState() {
    super.initState();
    cdSpinController = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat(reverse: false);
    func = () {
      if (widget.data.isPlaying) {
        if (!cdSpinController.isAnimating) {
          cdSpinController.repeat(reverse: false);
        }
      } else {
        if (cdSpinController.isAnimating) {
          cdSpinController.stop();
        }
      }
    };
    widget.data.controller?.addListener(func);
    likeBtnCtrl = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ContentInfo(
            uiModel: widget.data,
          ),
        ),
        Positioned.fill(
            right: 0,
            bottom: 0,
            left: MediaQuery.of(context).size.width - 60.w,
            child: actionsSection()),
      ],
    );
  }

  Widget actionsSection() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MCircleButton(
          size: AppDimens.circleButtonSize.h,
        ),
        LikeButton(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          size: AppDimens.buttonSize.h,
          countPostion: CountPostion.bottom,
          likeCount: 100,
          iconColor: Colors.white,
        ),
        LikeButton(
          onTap: (isLiked) async {
            await showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  constraints: BoxConstraints(maxHeight: 800.h),
                  color: Colors.red,
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              backgroundColor: Colors.white,
            );
            return false;
          },
          size: AppDimens.buttonSize.h,
          padding: EdgeInsets.symmetric(vertical: 10.h),
          likeBuilder: (isLiked) => MImage(
            Assets.iconsComment.path,
            color: Colors.white,
            width: AppDimens.buttonSize.w,
            height: AppDimens.buttonSize.h,
          ),
          likeCount: 888,
          countPostion: CountPostion.bottom,
        ),
        LikeButton(
          onTap: (isLiked) async {
            return false;
          },
          size: AppDimens.buttonSize.h,
          padding: EdgeInsets.symmetric(vertical: 10.h),
          likeBuilder: (isLiked) => MImage(
            Assets.iconsShare.path,
            color: Colors.white,
            width: AppDimens.buttonSize.w,
            height: AppDimens.buttonSize.h,
          ),
          likeCount: 888,
          countPostion: CountPostion.bottom,
        ),
        saveButton(),
        CircleMusicWidget(
          controller: cdSpinController,
        ),
        SizedBox(
          height: 15.h,
        )
      ],
    );
  }

  Widget saveButton() {
    return LikeButton(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      onTap: ((isLiked) async {
        return !isLiked;
      }),
      size: AppDimens.buttonSize.h,
      isLiked: false,
      circleColor: CircleColor(
        start: Colors.grey[200]!,
        end: Colors.grey[400]!,
      ),
      bubblesColor: BubblesColor(
        dotPrimaryColor: Colors.grey[600]!,
        dotSecondaryColor: Colors.grey[200]!,
      ),
      likeBuilder: (bool isLiked) {
        return Icon(
          Icons.bookmark,
          color: isLiked ? Colors.yellow : Colors.white,
          size: AppDimens.buttonSize.h,
        );
      },
      likeCount: 888,
      countPostion: CountPostion.bottom,
      countBuilder: (int? count, bool isLiked, String text) {
        return Text(
          count == 0 ? 'love' : text,
          style: const TextStyle(
            color: Colors.white,
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    widget.data.controller?.removeListener(func);
    cdSpinController.dispose();
    likeBtnCtrl.dispose(); // TODO: implement dispose
    super.dispose();
  }
}
