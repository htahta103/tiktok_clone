part of 'values.dart';

class AppThemeType {
  static const kLightTheme = 0;
  static const kDarkTheme = 1;
}

class AppThemes {
  AppThemes._();

  static ThemeData getTheme(int mode) {
    switch (mode) {
      case AppThemeType.kLightTheme:
        return AppThemes.lightTheme();
      case AppThemeType.kDarkTheme:
        return AppThemes.darkTheme();
      default:
        return AppThemes.lightTheme();
    }
  }

  static ThemeData lightTheme() => ThemeData(
        colorScheme: ColorScheme.light(
          primary: AppColors.primary,
          secondary: AppColors.secondary,
          background: AppColors.mainBG,
        ),
        dividerColor: AppColors.dividers,
        scaffoldBackgroundColor: AppColors.mainBG,
        textTheme: AppTextThemes.lightTextTheme(),
      );

  static ThemeData darkTheme() => ThemeData(
        colorScheme: ColorScheme.dark(
          primary: AppColors.primary,
          secondary: AppColors.secondary,
          background: AppColors.mainBG,
        ),
        dividerColor: AppColors.dividers,
        scaffoldBackgroundColor: AppColors.mainBG,
        textTheme: AppTextThemes.darkTextTheme(),
      );
}

class AppTextThemes {
  AppTextThemes._();

  static TextTheme lightTextTheme() => const TextTheme(
      // headline1: AppTextStyles.heading1,
      // headline2: AppTextStyles.heading2,
      // headline3: AppTextStyles.heading3,
      // headline4: AppTextStyles.heading4,
      // headline5: AppTextStyles.heading4,
      // headline6: AppTextStyles.heading4,
      // subtitle1: AppTextStyles.subHeading2,
      // subtitle2: AppTextStyles.subHeading3,
      // bodyText1: AppTextStyles.subHeading4,
      // bodyText2: AppTextStyles.body,
      // button: AppTextStyles.button,
      // overline: AppTextStyles.overline,
      // caption: AppTextStyles.caption,
      );

  static TextTheme darkTextTheme() => const TextTheme(
      // headline1: AppTextStyles.heading1,
      // headline2: AppTextStyles.heading2,
      // headline3: AppTextStyles.heading3,
      // headline4: AppTextStyles.heading4,
      // headline5: AppTextStyles.heading4,
      // headline6: AppTextStyles.heading4,
      // subtitle1: AppTextStyles.subHeading2,
      // subtitle2: AppTextStyles.subHeading3,
      // bodyText1: AppTextStyles.subHeading4,
      // bodyText2: AppTextStyles.body,
      // button: AppTextStyles.button,
      // overline: AppTextStyles.overline,
      // caption: AppTextStyles.caption,
      );
}
