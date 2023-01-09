part of base;

abstract class BaseBlocWithError extends BaseBloc {
  final BehaviorSubject<bool?> errorCtrl = BehaviorSubject();
  AppLoadingBloc get appLoadingBloc {
    return () {
      if (_instanceLoading != null) {
        return _instanceLoading!;
      }
      _instanceLoading = getAppLoading;
      return _instanceLoading!;
    }.call();
  }

  AppLoadingBloc get getAppLoading => AppLoadingBloc();
  AppLoadingBloc? _instanceLoading;

  Stream<bool> get loadingStream => appLoadingBloc.stream;
  Stream<bool?> get errorStream => errorCtrl.stream;

  List<bool?> errors = [];

  @override
  void dispose() {
    errorCtrl.close();
  }

  void checkErrors() {
    if (!errors.contains(false)) {
      errorCtrl.sink.add(true);
    } else {
      errorCtrl.sink.add(false);
    }
  }

  void clearErrors() {
    errors.clear();
  }

  void addError(bool value) {
    errors.add(value);
  }
}
