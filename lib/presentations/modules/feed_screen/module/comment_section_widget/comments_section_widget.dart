import 'package:flutter/material.dart';
import 'package:flutter_persistent_keyboard_height/flutter_persistent_keyboard_height.dart';
import 'package:tiktok_clone/common/utils/utils.dart';
import 'package:tiktok_clone/common_widget/buttons/m_icon_button.dart';
import 'package:tiktok_clone/common_widget/common_widget.dart';
import 'package:tiktok_clone/common_widget/values/values.dart';
import 'package:tiktok_clone/presentations/modules/feed_screen/module/comment_section_widget/comment_widget.dart';
import 'package:tiktok_clone/presentations/route/app_navigator.dart';

import '../../../../../common_widget/text_field/m_text_field_smooth.dart';

class CommentsSection extends StatelessWidget {
  const CommentsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentKeyboardHeightProvider(
      child: Stack(
        children: [
          Positioned.fill(
            top: 300.h,
            child: Container(
              color: AppColors.mainBG,
              child: Column(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: MText.titleComment(
                        '2 Comments',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15.sp),
                      )),
                      MIconButton(
                        icon: Icons.close,
                        onPressed: () async {
                          AppNavigator.getBack(context);
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: const [
                          CommentWidget(),
                          CommentWidget(),
                          CommentWidget(),
                          CommentWidget(),
                          CommentWidget(),
                          CommentWidget(),
                          CommentWidget(),
                          CommentWidget(),
                          CommentWidget(),
                          CommentWidget(),
                          CommentWidget(),
                          CommentWidget(),
                          CommentWidget(),
                          CommentWidget(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // MediaQuery.of(context).viewInsets.bottom > 0
          //     ? Positioned.fill(
          //         child: MInkwell(
          //           child: Container(
          //             color: Colors.red,
          //           ),
          //         ),
          //       )
          //     : const SizedBox(),
          const Align(
            alignment: Alignment.bottomCenter,
            child: MTextFieldSmooth(),
          )
        ],
      ),
    );
  }
}
