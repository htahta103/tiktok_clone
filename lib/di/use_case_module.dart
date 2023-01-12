part of 'di.dart';

class UseCaseModule extends DIModule {
  @override
  Future<void> provides() async {
    getIt.registerLazySingleton<VideoUseCase>(
      () => VideoUseCaseImpl(
        getIt<VideoRepo>(),
      ),
    );
  }
}
