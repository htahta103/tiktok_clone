part of base;

class AppLoadingBloc extends BaseBloc {
  final PublishSubject<bool> _loadingCtrl = PublishSubject();

  Stream<bool> get stream => _loadingCtrl.stream;
  bool _isLoading = false;

  Timer? _timeout;

  Timer? _limitTimer;

  void loading({bool hasLimitTimer = false}) {
    if (hasLimitTimer) {
      if (_limitTimer?.isActive ?? false) return;
      _limitTimer =
          Timer.periodic(const Duration(milliseconds: 300), (timer) {});
    }
    _isLoading = true;
    _loadingCtrl.sink.add(_isLoading);
    _setLoadingTimeout();
  }

  void loaded({bool hasLimitTimer = false}) async {
    if (hasLimitTimer) {
      if (_limitTimer != null && _limitTimer!.tick >= 1) {
        _limitTimer?.cancel();
      } else {
        await Future.delayed(const Duration(milliseconds: 300));
        _limitTimer?.cancel();
      }
    }
    _isLoading = false;
    _loadingCtrl.sink.add(_isLoading);
  }

  void _setLoadingTimeout() {
    _cancelTimeout();
    _timeout = Timer.periodic(const Duration(seconds: 30), (timer) async {
      timer.cancel();
      if (_isLoading) {
        loaded();
      }
    });
  }

  void _cancelTimeout() {
    if (_timeout != null && _timeout!.isActive) {
      _timeout?.cancel();
    }
  }

  Future<dynamic> whileLoading(Future<dynamic> future) {
    loading();
    return Future.microtask(() => future).whenComplete(() => loaded);
  }

  @override
  void dispose() {
    _cancelTimeout();
    _loadingCtrl.close();
  }
}
