part of 'values.dart';

class AppColors {
  AppColors._();

  // Base colors
  static const Color white = Colors.white;
  static const Color white60 = Colors.white60;
  static const Color white30 = Colors.white30;
  static const Color transparent = Colors.transparent;
  static Color shimmerBase = Colors.grey.shade50;
  static Color shimmerHighLighted = Colors.grey.shade200;

  static const Color primary = Color(0xFF007DBC);
  static const Color primaryBrand = Color(0xFF64D22D);

  static const Color secondary = Color(0xFF00619E);

  static const Color negative = Color(0xFFF10A41);
  static const Color positive = Color(0xFF159558);
  static const Color critical = Color(0xFFF8BA1A);
  static const Color specialBtnBG = Color(0xFFF5A732);
  static const Color red = Colors.red;
  static Color red70 = Colors.red.withOpacity(0.7);

  static const Color coin = Color(0xFFFF6002);
  static const Color gem = Color(0xFF17ACFF);

  static LinearGradient get backgroundGradient => LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            mainBG,
            tabsBG,
          ]);
  static final LinearGradient transparentGradientLight = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Colors.transparent, const Color(0xFFFFFFFF).withOpacity(0.9)]);

  static final LinearGradient transparentGradientDark = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Colors.transparent, const Color(0xFF000000).withOpacity(0.9)]);

  static LinearGradient get transparentGradient {
    int themeMode = 0;
    // getIt.get<AppSettingsBloc>().currentThemeMode;
    switch (themeMode) {
      case AppThemeType.kLightTheme:
        return transparentGradientDark;
      case AppThemeType.kDarkTheme:
        return transparentGradientDark;
      default:
        return transparentGradientLight;
    }
  }

  static Color transparentColorOverlay(bool reverse) {
    int themeMode = 0;

    //getIt.get<AppSettingsBloc>().currentThemeMode;
    var lightModeColor = reverse ? Colors.black38 : Colors.white38;
    var darkModeColor = reverse ? Colors.white38 : Colors.black38;
    switch (themeMode) {
      case AppThemeType.kLightTheme:
        return lightModeColor;
      case AppThemeType.kDarkTheme:
        return darkModeColor;
      default:
        return lightModeColor;
    }
  }

  static LinearGradient get appSkeletonLightGradient {
    return const LinearGradient(
      colors: [
        Color(0xFFD8E3E7),
        Color(0xFFC8D5DA),
        Color(0xFFD8E3E7),
      ],
      stops: [
        0.1,
        0.5,
        0.9,
      ],
    );
  }

  static LinearGradient get appSkeletonDarkGradient {
    return const LinearGradient(colors: [
      Color(0xFF222222),
      Color(0xFF242424),
      Color(0xFF2B2B2B),
      Color(0xFF242424),
      Color(0xFF222222),
    ], stops: [
      0.0,
      0.2,
      0.5,
      0.8,
      1,
    ]);
  }

  // Theme colors
  static void update(int themeMode) {
    if (themeMode == AppThemeType.kDarkTheme) {
      mainBG = _mainBGDark;
      buttonBG = _buttonBGDark;
      tabsBG = _tabsBGDark;
      borderDGrey = _borderDGreyDark;
      dividers = _dividersDark;
      buttonText = _buttonTextDark;
      cardBG = _cardBGDark;
      hiEmText = _hiEmTextDark;
      medEmText = _medEmTextDark;
    } else {
      mainBG = _mainBGLight;
      buttonBG = _buttonBGLight;
      tabsBG = _tabsBGLight;
      borderDGrey = _borderDGreyLight;
      dividers = _dividersLight;
      buttonText = _buttonTextLight;
      cardBG = _cardBGLight;
      hiEmText = _hiEmTextLight;
      medEmText = _medEmTextLight;
    }
  }

  static const Color _mainBGLight = Color(0xFFFFFFFF);
  static const Color _mainBGDark = Color(0xFF272727);
  static Color mainBG = _mainBGLight;

  static const Color _buttonBGLight = Color(0xFFA0ADBD);
  static const Color _buttonBGDark = Color(0xFF6E7D91);
  static Color buttonBG = _buttonBGLight;

  static const Color _tabsBGLight = Color(0xFFF3F8FB);
  static const Color _tabsBGDark = Color(0xFF4B5166);
  static Color tabsBG = _tabsBGLight;

  static const Color _borderDGreyLight = Color(0xFF5E6775);
  static const Color _borderDGreyDark = Color(0xFFF4F4F4);
  static Color borderDGrey = _borderDGreyLight;

  static const Color _dividersLight = Color(0xFFF4F4F4);
  static const Color _dividersDark = Color(0xFF363D48);
  static Color dividers = _dividersLight;

  static const Color _buttonTextLight = Color(0xFF4B5166);
  static const Color _buttonTextDark = Color(0xFFF3F8FB);
  static Color get buttonTextLight => _buttonTextLight;
  static Color buttonText = _buttonTextLight;

  static const Color _cardBGLight = Color(0xFFA0ADBD);
  static const Color _cardBGDark = Color(0xFF6E7D91);
  static Color cardBG = _cardBGLight;

  static const Color _hiEmTextLight = Color(0xFF272727);
  static const Color _hiEmTextDark = Color(0xFFFBFBFB);
  static Color hiEmText = _hiEmTextLight;

  static const Color _medEmTextLight = Color(0xFF6E7D91);
  static const Color _medEmTextDark = Color(0xFFC2CCDA);
  static Color medEmText = _medEmTextLight;

  static final LinearGradient cdGradient = LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      stops: [
        0.1257,
        0.3838,
        0.6278,
        0.8803,
      ],
      colors: [
        const Color(0xFF171717).withOpacity(1),
        const Color(0xFF373736).withOpacity(1),
        const Color(0xFF171717).withOpacity(1),
        const Color(0xFF373736).withOpacity(1)
      ]);

  static final LinearGradient contentGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
  );
}
