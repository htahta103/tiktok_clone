part of commonWidget;

class CircleContainer extends StatelessWidget {
  final Color? bgColor;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final Widget child;
  final bool? haveBorder;
  final Gradient? gradient;
  final double? size;
  const CircleContainer(
      {super.key,
      this.bgColor,
      required this.child,
      this.margin,
      this.padding,
      this.haveBorder,
      this.gradient,
      this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: gradient != null ? null : (bgColor ?? AppColors.transparent),
        borderRadius: BorderRadius.circular(45),
        gradient: gradient,
        border: haveBorder ?? true
            ? Border.all(color: AppColors.white, width: 2.w)
            : null,
        boxShadow: const [
          // BoxShadow(
          //   blurRadius: AppDimens.kBlurRadiusTopBar.w,
          //   offset: Offset(0, 4.h),
          //   color: AppColors.boxShadow,
          // )
        ],
      ),
      child: child,
    );
  }
}

class CircleAnimatedContainer extends StatelessWidget {
  final Color? bgColor;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final Widget child;
  final bool? haveBorder;
  final Gradient? gradient;
  final double? size;
  final AnimationController controller;
  const CircleAnimatedContainer({
    super.key,
    this.bgColor,
    required this.child,
    this.margin,
    this.padding,
    this.haveBorder,
    this.gradient,
    this.size,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: CurvedAnimation(
        parent: controller,
        curve: Curves.linear,
      ),
      child: CircleContainer(
        bgColor: bgColor,
        margin: margin,
        padding: padding,
        haveBorder: haveBorder,
        gradient: gradient,
        size: size,
        child: child,
      ),
    );
  }
}
