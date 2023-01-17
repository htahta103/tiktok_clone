part of commonWidget;

class CircleMusicWidget extends StatelessWidget {
  final AnimationController controller;
  const CircleMusicWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAnimatedContainer(
          controller: controller,
          haveBorder: false,
          size: 49.h,
          gradient: AppColors.cdGradient,
          child: Center(
              child: MImage(
            Assets.iconsMusicDefault.path,
            width: 27.w,
            height: 27.h,
          )),
        ),
      ],
    );
  }
}
