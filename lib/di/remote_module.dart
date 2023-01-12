part of 'di.dart';

class RemoteModule extends DIModule {
  //TODO
  // final dio = await DioClient.setup();
  final dio = Dio();

  @override
  Future<void> provides() async {
    getIt.registerSingleton(VideoRemote());
  }
}
