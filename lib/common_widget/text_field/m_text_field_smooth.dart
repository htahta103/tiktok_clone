import 'package:flutter/material.dart';
import 'package:flutter_persistent_keyboard_height/flutter_persistent_keyboard_height.dart';
import 'package:tiktok_clone/common/utils/utils.dart';
import 'package:tiktok_clone/common_widget/common_widget.dart';
import 'package:tiktok_clone/presentations/route/app_navigator.dart';

import '../values/values.dart';

class MTextFieldSmooth extends StatefulWidget {
  const MTextFieldSmooth({super.key});

  @override
  State<MTextFieldSmooth> createState() => _MTextFieldSmoothState();
}

class _MTextFieldSmoothState extends State<MTextFieldSmooth> {
  late FocusNode node;
  @override
  void initState() {
    super.initState();
    node = FocusNode();
    node.addListener(onFocusChange);
  }

  void onFocusChange() {
    setState(() {});
  }

  @override
  void dispose() {
    node.removeListener(onFocusChange);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Column(
        children: [
          Expanded(
              child: node.hasFocus
                  ? MInkwell(
                      //Note - Using primary Focus to correct while pageview
                      onPressed: () => AppNavigator.getBack(context),
                      child: Container(
                        color: AppColors.black38,
                      ),
                    )
                  : const SizedBox()),
          AnimatedContainer(
              padding: EdgeInsets.only(
                  bottom: node.hasFocus
                      ? PersistentKeyboardHeight.of(context).keyboardHeight
                      : 0),
              duration: const Duration(milliseconds: 105),
              curve: Curves.decelerate,
              color: AppColors.mainBG,
              child: Row(
                children: [
                  MCircleButton(
                    margin: EdgeInsets.only(right: 5.w),
                    size: 30.h,
                    bgColor: AppColors.transparent,
                    haveAddFriendButton: false,
                    borderColor: AppColors.borderDGrey,
                  ),
                  Expanded(
                    child: MTextField(
                      focusNode: node,
                      textStyle: TextStyle(fontSize: 13.sp),
                      inputDecoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10.h),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(45),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
