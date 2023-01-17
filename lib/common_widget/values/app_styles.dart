part of 'values.dart';

class AppStyles {
  AppStyles._();

  static void styleDefault() async {
    // if (!isWeb) {
    await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    int themeMode = 0;
    // getIt.get<AppSettingsBloc>().currentThemeMode;
    switch (themeMode) {
      case AppThemeType.kLightTheme:
        return SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          statusBarColor: AppColors.mainBG,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ));
      case AppThemeType.kDarkTheme:
        return SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          statusBarColor: AppColors.mainBG,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.dark,
        ));
      default:
        return SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          statusBarColor: AppColors.mainBG,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ));
    }
    // }
  }

  static const inputDecoration = InputDecoration(
    hintText: 'Enter your value',
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(3.0)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blueGrey, width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(3.0)),
    ),
  );

  static const kMessageContainerDecoration = BoxDecoration(
    border: Border(
      top: BorderSide(color: AppColors.white, width: 2.0),
    ),
  );

  static DecorationImage buildDecorationImage(String path,
      {BoxFit fit = BoxFit.contain, ColorFilter? filter, String package = ''}) {
    return DecorationImage(
        image: AssetImage(path, package: package),
        fit: fit,
        colorFilter: filter);
  }

//   static BoxShadow buildShadow() => const BoxShadow(
//         color: AppColors.boxShadow,
//         offset: Offset(0, 4),
//         blurRadius: 4,
//       );
}

mixin OutlineInputBorderMixin {
  OutlineInputBorder inputBorderDisable({Color? borderInput}) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: borderInput ?? AppColors.medEmText,
        width: 2,
      ),
      borderRadius: const BorderRadius.all(Radius.circular(25)),
    );
  }

  OutlineInputBorder inputBorderDisableWithColor({Color? borderInput}) {
    return OutlineInputBorder(
        borderSide: BorderSide(
          color: borderInput ?? AppColors.medEmText,
          width: 2,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(25)));
  }

  OutlineInputBorder inputBorderFocus({Color? borderInput}) {
    return OutlineInputBorder(
        borderSide: BorderSide(
          color: borderInput ?? AppColors.medEmText,
          width: 2,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(25)));
  }
}
