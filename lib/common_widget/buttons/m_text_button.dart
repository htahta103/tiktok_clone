import 'package:flutter/material.dart';
import 'package:tiktok_clone/common/utils/utils.dart';
import 'package:tiktok_clone/common_widget/values/values.dart';

class MTextButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  final TextStyle? style;
  const MTextButton(
      {super.key, this.onPressed, required this.text, this.style});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child: Text(
          text,
          style: style ??
              TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15.sp,
                color: AppColors.white,
              ),
        ));
  }
}
