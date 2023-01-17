import 'package:flutter/material.dart';

class StringUtil {
  StringUtil._();

  static String enumToName(String enumToString) {
    final List<String> paths = enumToString.split('.');
    return paths[1];
  }

  static bool isNetworkImage(String? path) =>
      isNotEmpty(path) && path!.contains('http');

  static bool isNotEmpty(dynamic item) {
    if (item == null) return false;
    if (item is String) {
      return item.isNotEmpty;
    }
    if (item is List) {
      return item.isNotEmpty;
    }
    return false;
  }

  static bool isEmpty(String? s) {
    return !isNotEmpty(s);
  }

  static bool hasTextOverflow(String text, TextStyle style,
      {double minWidth = 0,
      double maxWidth = double.infinity,
      int maxLines = 2}) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: maxLines,
      textDirection: TextDirection.ltr,
    )..layout(minWidth: minWidth, maxWidth: maxWidth);
    return textPainter.didExceedMaxLines;
  }

  static List<HashtagContent> splitStringWithHashtag(String value) {
    final hastTagRegexp = RegExp(r'\#[a-zA-Z0-9]+\b()');
    List<String> listChar = value.split(' ');
    List<HashtagContent> res = [];
    for (var item in listChar) {
      if (hastTagRegexp.hasMatch(item)) {
        res.add(HashtagContent(res.isEmpty ? item : ' $item', true));
      } else {
        res.add(HashtagContent(res.isEmpty ? item : ' $item', false));
      }
    }
    return res;
  }
}

class HashtagContent {
  final String value;
  final bool isHashtag;

  HashtagContent(this.value, this.isHashtag);
}
