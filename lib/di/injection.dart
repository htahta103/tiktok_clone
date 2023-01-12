part of 'di.dart';

class Injection {
  static Future<void> inject() async {
    await RemoteModule().provides();
    await RepoModule().provides();
    await UseCaseModule().provides();
    await BlocModule().provides();
  }
}
