import 'package:flutter/material.dart';
import 'package:tiktok_clone/common/utils/utils.dart';
import 'package:tiktok_clone/common_widget/buttons/like_button/like_button.dart';
import 'package:tiktok_clone/common_widget/buttons/m_icon_button.dart';
import 'package:tiktok_clone/common_widget/common_widget.dart';
import 'package:tiktok_clone/common_widget/values/values.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MCircleButton(
            margin: EdgeInsets.only(right: 5.w),
            size: 30.h,
            bgColor: AppColors.coin,
            haveAddFriendButton: false,
          ),
          Expanded(child: content()),
        ],
      ),
    );
  }

  Widget content() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        MText.titleComment('Username'),
        SizedBox(
          height: 2.h,
        ),
        MText.comment('Comment'),
        SizedBox(
          height: 2.h,
        ),
        Container(
          // color: Colors.red,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: MText.comment('2h')),
              LikeButton(
                haveBubble: false,
                size: 20.h,
                countPostion: CountPostion.right,
                likeCount: 100,
                countColor: AppColors.buttonBG,
                likeBuilder: (isLiked) => isLiked
                    ? Icon(
                        Icons.favorite_rounded,
                        color: AppColors.red70,
                        size: 20.h,
                      )
                    : Icon(
                        Icons.favorite_border_outlined,
                        color: AppColors.buttonBG,
                        size: 20.h,
                      ),
              ),
              const MIconButton(
                  icon: Icons.thumb_down_outlined,
                  iconPressed: Icons.thumb_down_rounded),
            ],
          ),
        )
      ],
    );
  }
}
