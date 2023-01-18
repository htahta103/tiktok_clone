import 'package:flutter/material.dart';
import 'package:tiktok_clone/common_widget/values/values.dart';

class HeartAnimation extends StatefulWidget {
  final Stream<bool> animateStream;
  final Duration duration;
  const HeartAnimation(
      {super.key, required this.animateStream, required this.duration});
  @override
  State<HeartAnimation> createState() => _HeartAnimationState();
}

class _HeartAnimationState extends State<HeartAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scale;
  late Animation<double> opacityIn;
  late Animation<double> opacityOut;
  late Animation<double> rotate;
  late Animation<RelativeRect> transform;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: widget.duration);
    //Stagging animation
    scale = Tween<double>(begin: 1, end: 1.2).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0,
          0.3,
          curve: Curves.ease,
        ),
      ),
    );
    opacityIn = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0,
          0.3,
          curve: Curves.ease,
        ),
      ),
    );
    opacityOut = Tween<double>(begin: 1, end: 0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.4,
          1,
          curve: Curves.ease,
        ),
      ),
    );

    transform = RelativeRectTween(
            begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
            end: const RelativeRect.fromLTRB(0, -300, -300, 0))
        .animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.4,
          1,
          curve: Curves.linear,
        ),
      ),
    );
    rotate = Tween<double>(begin: 0, end: -1).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.4,
          1,
          curve: Curves.ease,
        ),
      ),
    );
    widget.animateStream.listen((event) {
      if (event) {
        print('animate ne');
        doAnimation();
      }
    });
  }

  Future doAnimation() async {
    await controller.forward();
    controller.reset();
  }

  @override
  Widget build(BuildContext context) {
    return PositionedTransition(
      rect: transform,
      child: RotationTransition(
        turns: rotate,
        child: ScaleTransition(
          scale: scale,
          child: FadeTransition(
            opacity: opacityOut,
            child: FadeTransition(
              opacity: opacityIn,
              child: Icon(
                Icons.favorite_rounded,
                size: 100,
                color: AppColors.red70,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
