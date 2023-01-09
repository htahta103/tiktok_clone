import 'package:flutter/material.dart';

import 'animated_bubble.dart';

class TypingIndicator extends StatefulWidget {
  final bool showIndicator;
  final Color bubbleColor;
  final Color flashingCircleDarkColor;
  final Color flashingCircleBrightColor;

  const TypingIndicator({
    super.key,
    this.showIndicator = false,
    this.bubbleColor = const Color(0xFF646b7f),
    this.flashingCircleDarkColor = const Color(0xFF333333),
    this.flashingCircleBrightColor = const Color(0xFFaec1dd),
  });

  @override
  State<TypingIndicator> createState() => _TypingIndicatorState();
}

class _TypingIndicatorState extends State<TypingIndicator>
    with TickerProviderStateMixin {
  late AnimationController _appearanceController;
  late Animation<double> _indicatorSpaceAnimation;

  late Animation<double> _smallBubbleAnimation;
  late Animation<double> _mediumBubbleAnimation;
  late Animation<double> _largeBubbleAnimation;

  late AnimationController _repeatingController;
  final List<Interval> _dotIntervals = const [
    Interval(0.25, 0.8),
    Interval(0.35, 0.9),
    Interval(0.45, 1.0),
  ];

  @override
  void initState() {
    super.initState();
    _appearanceController = AnimationController(vsync: this);

    _indicatorSpaceAnimation = CurvedAnimation(
      parent: _appearanceController,
      curve: const Interval(0.0, 0.4, curve: Curves.easeOut),
      reverseCurve: const Interval(0.0, 1.0, curve: Curves.easeOut),
    ).drive(Tween<double>(
      begin: 0,
      end: 60,
    ));

    _smallBubbleAnimation = CurvedAnimation(
      parent: _appearanceController,
      curve: const Interval(0, 0.5, curve: Curves.elasticOut),
      reverseCurve: const Interval(0, 0.3, curve: Curves.easeOut),
    );

    _mediumBubbleAnimation = CurvedAnimation(
      parent: _appearanceController,
      curve: const Interval(0.2, 0.7, curve: Curves.elasticOut),
      reverseCurve: const Interval(0.2, 0.6, curve: Curves.easeOut),
    );

    _largeBubbleAnimation = CurvedAnimation(
      parent: _appearanceController,
      curve: const Interval(0.3, 1, curve: Curves.elasticOut),
      reverseCurve: const Interval(0.5, 1, curve: Curves.easeOut),
    );

    _repeatingController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    if (widget.showIndicator) {
      _showIndicator();
    }
  }

  @override
  void dispose() {
    _appearanceController.dispose();
    _repeatingController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant TypingIndicator oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.showIndicator != oldWidget.showIndicator) {
      if (widget.showIndicator) {
        _showIndicator();
      } else {
        _hideIndicator();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _indicatorSpaceAnimation,
      builder: ((context, child) {
        return SizedBox(
          height: _indicatorSpaceAnimation.value,
          child: Stack(
            children: [
              AnimatedBubble(
                animation: _smallBubbleAnimation,
                left: 8,
                bottom: 8,
                bubble: CircleBubble(
                  size: 8,
                  bubbleColor: widget.bubbleColor,
                ),
              ),
              AnimatedBubble(
                animation: _mediumBubbleAnimation,
                left: 10,
                bottom: 10,
                bubble: CircleBubble(
                  size: 16,
                  bubbleColor: widget.bubbleColor,
                ),
              ),
              AnimatedBubble(
                animation: _largeBubbleAnimation,
                left: 12,
                bottom: 12,
                bubble: StatusBubble(
                  repeatingController: _repeatingController,
                  dotIntervals: _dotIntervals,
                  flashingCircleDarkColor: widget.flashingCircleDarkColor,
                  flashingCircleBrightColor: widget.flashingCircleBrightColor,
                  bubbleColor: widget.bubbleColor,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  void _showIndicator() {
    _appearanceController
      ..duration = const Duration(milliseconds: 750)
      ..forward();
    _repeatingController.repeat();
  }

  void _hideIndicator() {
    _appearanceController
      ..duration = const Duration(milliseconds: 450)
      ..reverse();
    _repeatingController.stop();
  }
}
