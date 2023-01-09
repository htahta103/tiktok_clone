part of 'di.dart';

class BlocModule extends DIModule {
  @override
  Future<void> provides() async {
    getIt.registerLazySingleton<AppLoadingBloc>(() => AppLoadingBloc());
    getIt.registerLazySingleton<AppSettingBloc>(() => AppSettingBloc());
  }
}
