// part of 'values.dart';

// /// See more description in [TextTheme]
// class AppTextStyles {
//   AppTextStyles._();

//   static const kInherit = true;

//   static TextStyle get heading1 => TextStyle(
//         inherit: kInherit,
//         color: AppColors.hiEmText,
//         fontSize: AppDimens.kTextSizeHeading1.sp,
//         fontWeight: FontWeight.w600,
//         fontFamily: FontFamily.khand,
//         letterSpacing: -0.32,
//         height: 123 / 110,
//       );

//   static TextStyle get heading2 => TextStyle(
//       inherit: kInherit,
//       color: AppColors.hiEmText,
//       fontSize: AppDimens.kTextSizeHeading2.sp,
//       fontWeight: FontWeight.w600,
//       fontFamily: FontFamily.khand,
//       letterSpacing: -0.32,
//       height: 99 / 88);

//   static TextStyle get heading3 => TextStyle(
//         inherit: kInherit,
//         color: AppColors.hiEmText,
//         fontSize: AppDimens.kTextSizeHeading3.sp,
//         fontWeight: FontWeight.w600,
//         fontFamily: FontFamily.khand,
//         letterSpacing: -0.24,
//         height: 80 / 70,
//       );

//   static TextStyle get heading4 => TextStyle(
//         inherit: kInherit,
//         color: AppColors.hiEmText,
//         fontSize: AppDimens.kTextSizeHeading4.sp,
//         fontWeight: FontWeight.w600,
//         fontFamily: FontFamily.khand,
//         letterSpacing: -0.16,
//         height: 66 / 56,
//       );

//   static TextStyle get heading5 => TextStyle(
//         inherit: kInherit,
//         color: AppColors.hiEmText,
//         fontSize: AppDimens.kTextSizeSubHeading4.sp,
//         fontWeight: FontWeight.w700,
//         fontFamily: FontFamily.khand,
//         letterSpacing: -0.16,
//         height: 55 / 56,
//       );

//   static TextStyle get subHeading2 => TextStyle(
//       inherit: kInherit,
//       color: AppColors.borderDGrey,
//       fontSize: AppDimens.kTextSizeSubHeading2.sp,
//       fontWeight: FontWeight.w400,
//       fontFamily: FontFamily.khand,
//       letterSpacing: -0.16,
//       height: 66 / 56);

//   static TextStyle get subHeading3 => TextStyle(
//       inherit: kInherit,
//       color: AppColors.borderDGrey,
//       fontSize: AppDimens.kTextSizeSubHeading3.sp,
//       fontWeight: FontWeight.w500,
//       fontFamily: FontFamily.khand,
//       height: 55 / 45);

//   static TextStyle get subHeading4 => TextStyle(
//       inherit: kInherit,
//       color: AppColors.borderDGrey,
//       fontSize: AppDimens.kTextSizeSubHeading4.sp,
//       fontWeight: FontWeight.w500,
//       fontFamily: FontFamily.khand,
//       letterSpacing: 0.16,
//       height: 55 / 36);

//   static TextStyle get title => TextStyle(
//         inherit: kInherit,
//         color: AppColors.buttonText,
//         fontSize: AppDimens.kTextSizeTitle.sp,
//         fontWeight: FontWeight.w500,
//         fontFamily: FontFamily.robotoMono,
//         letterSpacing: 0.16,
//         height: 60 / 45,
//       );
//   static TextStyle get body => TextStyle(
//         inherit: kInherit,
//         color: AppColors.hiEmText,
//         fontSize: AppDimens.kTextSizeBody.sp,
//         fontWeight: FontWeight.w400,
//         fontFamily: FontFamily.robotoMono,
//         letterSpacing: 0.16,
//         height: 56 / 36,
//       );

//   static TextStyle get bodyHeavy => TextStyle(
//         inherit: kInherit,
//         color: AppColors.hiEmText,
//         fontSize: AppDimens.kTextSizeBody.sp,
//         fontWeight: FontWeight.w700,
//         fontFamily: FontFamily.robotoMono,
//         letterSpacing: 0.16,
//         height: 56 / 36,
//       );

//   static TextStyle get bodyHeavyEm => TextStyle(
//         inherit: kInherit,
//         color: AppColors.hiEmText,
//         fontSize: AppDimens.kTextSizeBody.sp,
//         fontWeight: FontWeight.w700,
//         fontStyle: FontStyle.italic,
//         fontFamily: FontFamily.robotoMono,
//         letterSpacing: 0.16,
//         height: 56 / 36,
//       );

//   static TextStyle get bodyEm => TextStyle(
//         inherit: kInherit,
//         color: AppColors.hiEmText,
//         fontSize: AppDimens.kTextSizeBody.sp,
//         fontWeight: FontWeight.w400,
//         fontFamily: FontFamily.robotoMono,
//         letterSpacing: 0.16,
//         height: 56 / 36,
//       );

//   static TextStyle get extra => TextStyle(
//         inherit: kInherit,
//         color: AppColors.medEmText,
//         fontSize: AppDimens.kTextSizeExtra.sp,
//         fontWeight: FontWeight.w400,
//         fontFamily: FontFamily.robotoMono,
//         letterSpacing: 0.48,
//         height: 35 / 23,
//       );

//   static TextStyle get caption => TextStyle(
//         inherit: kInherit,
//         color: AppColors.medEmText,
//         fontSize: AppDimens.kTextSizeCaption.sp,
//         fontWeight: FontWeight.w400,
//         fontFamily: FontFamily.robotoMono,
//         letterSpacing: 0.32,
//         height: 43 / 29,
//       );

//   static TextStyle get overline => TextStyle(
//         inherit: kInherit,
//         color: AppColors.hiEmText,
//         fontSize: AppDimens.kTextSizeOverline.sp,
//         fontWeight: FontWeight.w900,
//         fontFamily: FontFamily.robotoMono,
//         letterSpacing: 0.64,
//         height: 34 / 29,
//       );

//   static TextStyle get button => TextStyle(
//         inherit: kInherit,
//         color: AppColors.white,
//         fontWeight: FontWeight.w700,
//         fontSize: AppDimens.kTextSizeButton.sp,
//         fontFamily: FontFamily.khand,
//         letterSpacing: 0.48,
//         height: 55 / 36,
//       );

//   static TextStyle get inlineLinkSmall => TextStyle(
//         inherit: kInherit,
//         color: AppColors.primary,
//         decoration: TextDecoration.underline,
//         fontWeight: FontWeight.w400,
//         fontSize: AppDimens.kTextSizeLinkSmall.sp,
//         fontFamily: FontFamily.robotoMono,
//         letterSpacing: 0.32,
//         height: 43 / 29,
//       );

//   static TextStyle get inlineLinkBig => TextStyle(
//         inherit: kInherit,
//         color: AppColors.primary,
//         decoration: TextDecoration.underline,
//         fontWeight: FontWeight.w400,
//         fontSize: AppDimens.kTextSizeLinkBig.sp,
//         fontFamily: FontFamily.robotoMono,
//         letterSpacing: 0.16,
//         height: 58 / 36,
//       );

//   static TextStyle get inlineScore => TextStyle(
//         inherit: kInherit,
//         color: AppColors.hiEmText,
//         fontWeight: FontWeight.w600,
//         fontSize: AppDimens.kTextSizeLinkBig.sp,
//         fontFamily: FontFamily.robotoMono,
//         letterSpacing: 0.64,
//         height: 58 / 36,
//       );

//   // Specials styles:
//   static TextStyle get coinGemStyle => TextStyle(
//         inherit: kInherit,
//         color: AppColors.mainBG,
//         fontSize: 30.sp,
//         fontWeight: FontWeight.w900,
//         fontFamily: FontFamily.robotoMono,
//         height: 35.16 / 30,
//       );

//   // Specials styles:
//   static TextStyle get buttonTextStyle => TextStyle(
//         inherit: kInherit,
//         color: AppColors.primary,
//         fontSize: 56.sp,
//         fontWeight: FontWeight.w900,
//         fontFamily: FontFamily.robotoMono,
//         height: 43 / 30,
//       );
// }
