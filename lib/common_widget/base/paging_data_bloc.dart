part of base;

var kApiPageSize = 15;

abstract class PagingDataBloc<T> extends BaseBlocWithError {
  final BehaviorSubject<bool> _loadingMoreController = BehaviorSubject();
  final BehaviorSubject<List<T>> dataController = BehaviorSubject();

  Stream<bool> get loadingMoreStream => _loadingMoreController.stream;

  Stream<List<T>> get dataStream => dataController.stream;
  bool isLastPage = true;
  int total = 0;
  int _page = 1;
  final int _limit = kApiPageSize;
  int getPageLimit() {
    return _limit;
  }

  Future<List<T>> getData({int? page, int? limit});

  Future<void> loadMoreData(
      {bool isLoading = true, bool isRefresh = false}) async {
    if (isLastPage) {
      return;
    }
    bool isFirstPage = _page == 1;

    if (isFirstPage) {
      if (isLoading) {
        appLoadingBloc.loading(hasLimitTimer: isRefresh);
      }
    } else {
      if (_loadingMoreController.hasValue &&
          _loadingMoreController.stream.value) {
        return;
      }
      if (!_loadingMoreController.isClosed) {
        _loadingMoreController.sink.add(true);
      }
    }

    try {
      final result = await getData(page: _page, limit: getPageLimit());

      isRefresh
          ? dataController.sink.add(result)
          : bindingData(
              [...dataController.stream.valueOrNull ?? [], ...result]);

      if (result.length < getPageLimit()) {
        isLastPage = true;
      }
      _page++;
      addError(false);
    } catch (e) {
      addError(true);
      Log.error('PagingDataBloc', e.toString());
      dataController.sink.addError(e.toString());
    } finally {
      checkErrors();
      if (isFirstPage) {
        if (isLoading) {
          appLoadingBloc.loaded(hasLimitTimer: isRefresh);
        }
      } else {
        if (!_loadingMoreController.isClosed) {
          _loadingMoreController.add(false);
        }
      }
    }
  }

  Future<void> refresh({bool isLoading = true}) async {
    _page = 1;
    isLastPage = false;
    clearErrors();
    await loadMoreData(isLoading: isLoading, isRefresh: true);
  }

  Future<void> updateData() async {
    var data = await getData(page: 1, limit: (_page - 1) * kApiPageSize);
    dataController.sink.add(data);
  }

  void bindingData(List<T> data) {
    return dataController.sink.add(data);
  }

  void checkLoadMore() {
    if (dataController.valueOrNull == null) return;
    if (!isLastPage && dataController.value.length < 15) {
      loadMoreData();
    }
  }

  @override
  void dispose() {
    _loadingMoreController.close();
    dataController.close();
    errorCtrl.close();
    super.dispose();
  }
}
