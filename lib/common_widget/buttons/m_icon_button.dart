import 'package:flutter/material.dart';
import 'package:tiktok_clone/common/utils/utils.dart';
import 'package:tiktok_clone/common_widget/values/values.dart';

class MIconButton extends StatefulWidget {
  final Function? onPressed;
  final IconData icon;
  final IconData? iconPressed;
  final double? sized;
  final EdgeInsets? padding;
  const MIconButton(
      {super.key,
      this.onPressed,
      required this.icon,
      this.iconPressed,
      this.sized,
      this.padding});

  @override
  State<MIconButton> createState() => _MIconButtonState();
}

class _MIconButtonState extends State<MIconButton> {
  late bool isPressed;
  @override
  void initState() {
    super.initState();
    isPressed = false;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () async {
          await widget.onPressed?.call();
          setState(() {
            isPressed = !isPressed;
          });
        },
        child: Container(
          padding: widget.padding ?? EdgeInsets.symmetric(horizontal: 10.w),
          child: Icon(
            isPressed ? widget.iconPressed ?? widget.icon : widget.icon,
            color: AppColors.buttonBG,
            size: widget.sized ?? 20.h,
          ),
        ));
  }
}
