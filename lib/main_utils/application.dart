import 'package:base_project/di/di.dart';
import 'package:base_project/global_blocs/app_loading.dart';
import 'package:base_project/global_blocs/app_setting_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import '../common/app_general/constants.dart';
import '../common/localization/localization.dart';
import '../common_widget/values/values.dart';
import '../presentations/route/my_route_observer.dart';
import '../presentations/route/routes.dart';

class Application extends StatelessWidget {
  static final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();
  static final GlobalKey<ScaffoldMessengerState> _rootScaffoldMessengerKey =
      GlobalKey();

  static BuildContext get currentContext => _navigatorKey.currentContext!;

  static ScaffoldMessengerState get currentScaffoldMessengerState =>
      _rootScaffoldMessengerKey.currentState!;

  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //TODO add global bloc here
        Provider<AppLoadingBloc>(
          create: (_) => getIt<AppLoadingBloc>(),
          dispose: (_, bloc) => bloc.dispose(),
        )
      ],
      child: StreamBuilder(
        stream: getIt.get<AppSettingBloc>().state,
        builder: (context, snapshot) {
          return _myApp(
              snapshot.data ?? AppState(themeMode: 0, languageCode: 'en'));
        },
      ),
    );
  }

  Widget _myApp(AppState state) {
    return MaterialApp(
      scaffoldMessengerKey: _rootScaffoldMessengerKey,
      navigatorKey: _navigatorKey,
      debugShowCheckedModeBanner: false,
      title: kAppName,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: Locale(state.languageCode),
      navigatorObservers: [
        MyRouteObserver(),
      ],
      theme: AppThemes.getTheme(state.themeMode),
      onGenerateRoute: Routes.getRouteGenerate,
      initialRoute: Routes.splashScreen,
    );
  }
}
