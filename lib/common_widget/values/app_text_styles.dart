part of 'values.dart';

/// See more description in [TextTheme]
class AppTextStyles {
  AppTextStyles._();

  static const kInherit = true;

  static TextStyle get commentTitle => TextStyle(
        inherit: kInherit,
        color: AppColors.hiEmText,
        fontSize: AppDimens.titleSize.sp,
        fontWeight: FontWeight.w900,
        fontFamily: FontFamily.robotoMono,
        letterSpacing: -0.32,
      );

  static TextStyle get comment => TextStyle(
      inherit: kInherit,
      color: AppColors.hiEmText,
      fontSize: AppDimens.titleSize.sp,
      fontWeight: FontWeight.w400,
      fontFamily: FontFamily.robotoMono,
      letterSpacing: -0.32,
      height: 18.sp / AppDimens.titleSize.sp);

  // Specials styles:
  // static TextStyle get buttonTextStyle => TextStyle(
  //       inherit: kInherit,
  //       color: AppColors.primary,
  //       fontSize: 56.sp,
  //       fontWeight: FontWeight.w900,
  //       fontFamily: FontFamily.robotoMono,
  //       height: 43 / 30,
  //     );
}
