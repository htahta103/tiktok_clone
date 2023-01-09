import 'package:rxdart/subjects.dart';

import '../common_widget/base/base.dart';

///Integrate App setting here
class AppSettingBloc extends BaseBloc {
  final BehaviorSubject<AppState> _appStateCtrl = BehaviorSubject();
  Stream<AppState> get state => _appStateCtrl.stream;
  @override
  void dispose() {
    // TODO: implement dispose
  }
}

class AppState {
  int themeMode;
  String languageCode;

  AppState({required this.themeMode, required this.languageCode});
}
