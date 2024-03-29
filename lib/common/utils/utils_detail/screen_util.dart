part of utils;

extension SizeExtension on num {
  double get w => ScreenUtil().setWidth(this).toDouble();

  double get h => ScreenUtil().setHeight(this).toDouble();

  double get sp => ScreenUtil().setSp(this).toDouble();

  double getWidthByScreen(BuildContext context) {
    return ((this / ScreenUtil.defaultWidth) *
            MediaQuery.of(context).size.width)
        .h;
  }

  double getHeightByScreen(BuildContext context) {
    return ((this / ScreenUtil.defaultHeight) *
            MediaQuery.of(context).size.height)
        .w;
  }
}

class MediaQueryAppModel {
  double? devicePixelRatio;
  double? width;
  double? height;
  double? textScaleFactor;

  MediaQueryAppModel({
    this.devicePixelRatio,
    this.width,
    this.height,
    this.textScaleFactor,
  });
}

class ScreenUtil {
  static ScreenUtil _instance = ScreenUtil._();
  static const double defaultWidth = 428;
  static const double defaultHeight = 926;

  /// Size of the phone in UI Design , px
  num? uiWidthPx;
  num? uiHeightPx;

  bool? allowSizeScaling;

  /// allowFontScaling Specifies whether fonts should scale
  /// to respect Text Size accessibility settings. The default is false.
  bool? allowFontScaling;

  static double? _screenWidth;
  static double? _screenHeight;
  static double? _pixelRatio;
  static double? _textScaleFactor;

  factory ScreenUtil() {
    return _instance;
  }

  ScreenUtil._();

  static void init(
    MediaQueryAppModel? mediaQuery, {
    num width = defaultWidth,
    num height = defaultHeight,
    bool allowFontScaling = false,
    bool allowSizeScaling = false,
  }) {
    _instance = ScreenUtil._();
    _instance.uiWidthPx = width;
    _instance.uiHeightPx = height;
    _instance.allowFontScaling = allowFontScaling;
    _instance.allowSizeScaling = allowSizeScaling;

    try {
      _pixelRatio = mediaQuery?.devicePixelRatio;
      _screenWidth = mediaQuery?.width;
      _screenHeight = mediaQuery?.height;
      _textScaleFactor = mediaQuery?.textScaleFactor;
      // if(_screenWidth! > _screenHeight!) {
      //   screenHeight = screenWidth! * (1920.0 / 1080.0);
      // }
      _screenHeight = screenWidth! * (defaultHeight / defaultWidth);
    } catch (_) {
      _pixelRatio = 1;
      _screenWidth = defaultWidth;
      _screenHeight = defaultHeight;
      _textScaleFactor = 1;
    }
  }

  /// The number of font pixels for each logical pixel.
  static double? get textScaleFactor => _textScaleFactor;

  /// The size of the media in logical pixels (e.g, the size of the screen).
  static double? get pixelRatio => _pixelRatio;

  /// The horizontal extent of this size.
  static double? get screenWidthDp => _screenWidth;

  ///The vertical extent of this size. dp
  static double? get screenHeightDp => _screenHeight;

  /// The vertical extent of this size. px
  static double? get screenWidth => (screenWidth ?? 0) * (pixelRatio ?? 0);

  /// The vertical extent of this size. px
  static double? get screenHeight => (screenHeight ?? 0) * (pixelRatio ?? 0);

  /// The ratio of the actual dp to the design draft px
  double get scaleWidth => (_screenWidth ?? 0) / (uiWidthPx ?? defaultWidth);

  double get scaleHeight =>
      (_screenHeight ?? 0) / (uiHeightPx ?? defaultHeight);

  double get scaleText => scaleWidth;

  /// Adapted to the device width of the UI Design.
  /// Height can also be adapted according to this to ensure no deformation ,
  /// if you want a square
  double setWidth(num width) =>
      (allowSizeScaling ?? false) ? width * scaleWidth : width.toDouble();

  /// Highly adaptable to the device according to UI Design
  /// It is recommended to use this method to
  /// achieve a high degree of adaptation
  /// when it is found that one screen in the UI design
  /// does not match the current style effect,
  ///  or if there is a difference in shape.
  double setHeight(num height) =>
      (allowSizeScaling ?? false) ? height * scaleHeight : height.toDouble();

  ///Font size adaptation method
  double setSp(num fontSize, {bool? allowFontScalingSelf}) =>
      ((allowFontScaling ?? false) || (allowFontScalingSelf ?? false))
          ? (fontSize * scaleText)
          : (fontSize * 1.0);
  // : (fontSize * scaleText) / (_textScaleFactor ?? 0);
}
