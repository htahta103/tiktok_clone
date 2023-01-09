import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedBubble extends StatelessWidget {
  final Animation<double> animation;
  final double left;
  final double bottom;
  final Widget bubble;
  const AnimatedBubble(
      {super.key,
      required this.animation,
      required this.left,
      required this.bottom,
      required this.bubble});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      bottom: bottom,
      child: AnimatedBuilder(
        animation: animation,
        builder: ((context, child) {
          return Transform.scale(
            scale: animation.value,
            alignment: Alignment.bottomLeft,
            child: child,
          );
        }),
        child: bubble,
      ),
    );
  }
}

class CircleBubble extends StatelessWidget {
  final double size;
  final Color bubbleColor;
  const CircleBubble(
      {super.key, required this.size, required this.bubbleColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: bubbleColor,
      ),
    );
  }
}

class StatusBubble extends StatelessWidget {
  const StatusBubble({
    super.key,
    required this.dotIntervals,
    required this.flashingCircleBrightColor,
    required this.flashingCircleDarkColor,
    required this.bubbleColor,
    required this.repeatingController,
  });

  final List<Interval> dotIntervals;
  final Color flashingCircleDarkColor;
  final Color flashingCircleBrightColor;
  final Color bubbleColor;
  final AnimationController repeatingController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 44,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(27),
        color: bubbleColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FlashingCircle(
            index: 0,
            repeatingController: repeatingController,
            dotIntervals: dotIntervals,
            flashingCircleDarkColor: flashingCircleDarkColor,
            flashingCircleBrightColor: flashingCircleBrightColor,
          ),
          FlashingCircle(
            index: 1,
            repeatingController: repeatingController,
            dotIntervals: dotIntervals,
            flashingCircleDarkColor: flashingCircleDarkColor,
            flashingCircleBrightColor: flashingCircleBrightColor,
          ),
          FlashingCircle(
            index: 2,
            repeatingController: repeatingController,
            dotIntervals: dotIntervals,
            flashingCircleDarkColor: flashingCircleDarkColor,
            flashingCircleBrightColor: flashingCircleBrightColor,
          ),
        ],
      ),
    );
  }
}

class FlashingCircle extends StatelessWidget {
  final int index;
  final AnimationController repeatingController;
  final List<Interval> dotIntervals;
  final Color flashingCircleDarkColor;
  final Color flashingCircleBrightColor;
  const FlashingCircle(
      {super.key,
      required this.index,
      required this.repeatingController,
      required this.dotIntervals,
      required this.flashingCircleDarkColor,
      required this.flashingCircleBrightColor});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: repeatingController,
      builder: ((context, child) {
        final circleSplashPercent =
            dotIntervals[index].transform(repeatingController.value);
        final circleColorPercent = sin(pi * circleSplashPercent);
        return Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.lerp(
                flashingCircleDarkColor,
                flashingCircleBrightColor,
                circleColorPercent,
              ),
            ));
      }),
    );
  }
}
