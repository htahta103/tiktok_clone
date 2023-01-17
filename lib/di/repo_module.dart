part of 'di.dart';

class RepoModule extends DIModule {
  @override
  Future<void> provides() async {
    // ignore: avoid_single_cascade_in_expression_statements
    getIt
      ..registerLazySingleton<VideoRepo>(
        () => VideoRepoImpl(
          getIt<VideoRemote>(),
        ),
      );
  }
}
