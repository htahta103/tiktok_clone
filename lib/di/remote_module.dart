part of 'di.dart';

class RemoteModule extends DIModule {
  //TODO
  // final dio = await DioClient.setup();
  final dio = Dio();

  @override
  Future<void> provides() async {
    getIt.registerLazySingleton<DogRemote>(
        () => DogRemote(dio, baseUrl: BASE_URL.URL));
  }
}
