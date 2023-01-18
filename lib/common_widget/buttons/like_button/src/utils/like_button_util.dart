import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:tiktok_clone/common_widget/values/values.dart';

///
///  create by zmtzawqlp on 2019/5/27
///
num degToRad(num deg) => deg * (math.pi / 180.0);

num radToDeg(num rad) => rad * (180.0 / math.pi);

double mapValueFromRangeToRange(double value, double fromLow, double fromHigh,
    double toLow, double toHigh) {
  return toLow + ((value - fromLow) / (fromHigh - fromLow) * (toHigh - toLow));
}

double clamp(double value, double low, double high) {
  return math.min(math.max(value, low), high);
}

Widget defaultWidgetBuilder(
    bool isLiked, double size, Color? iconColor, Color? iconColorLiked) {
  return Icon(
    Icons.favorite,
    color:
        isLiked ? iconColorLiked ?? AppColors.red : iconColor ?? Colors.white,
    size: size,
  );
}
