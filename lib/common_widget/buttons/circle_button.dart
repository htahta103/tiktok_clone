part of commonWidget;

class MCircleButton extends StatefulWidget {
  final VoidCallback? onPressed;
  final Widget? child;
  final double? size;
  final Color? bgColor;
  final Color? borderColor;
  final VoidCallback? addFriendColors;
  final bool haveAddFriendButton;
  final EdgeInsets? margin;
  const MCircleButton(
      {Key? key,
      this.child,
      this.onPressed,
      this.size,
      this.bgColor,
      this.addFriendColors,
      this.haveAddFriendButton = true,
      this.margin,
      this.borderColor})
      : super(key: key);

  @override
  State<MCircleButton> createState() => _MCardState();
}

class _MCardState extends State<MCircleButton>
    with SingleTickerProviderStateMixin {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleContainer(
          margin: widget.margin ??
              EdgeInsets.symmetric(vertical: 7.5.h, horizontal: 5.w),
          bgColor: widget.bgColor,
          borderColor: widget.borderColor,
          child: InkWell(
            onTap: widget.onPressed,
            child: Stack(
              children: [
                SizedBox(
                  width: widget.size,
                  height: widget.size,
                  child: Center(child: widget.child),
                ),
              ],
            ),
          ),
        ),
        widget.haveAddFriendButton
            ? Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Center(
                  child: CircleContainer(
                    haveBorder: false,
                    padding: EdgeInsets.all(1.h),
                    bgColor: AppColors.red,
                    child: Icon(
                      Icons.add,
                      color: AppColors.white,
                      size: 15.h,
                    ),
                  ),
                ),
              )
            : const SizedBox.shrink()
      ],
    );
  }
}
