part of '../common_widget.dart';

class MRefreshListView extends StatelessWidget {
  final Future<void> Function() onRefresh;
  final int itemCount;
  final List<Widget>? titles;
  final EdgeInsetsGeometry? padding;
  final Widget Function(BuildContext, int) builder;

  const MRefreshListView({
    Key? key,
    required this.onRefresh,
    required this.itemCount,
    required this.builder,
    this.titles,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: Column(
        children: [
          ...?titles,
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              padding: padding,
              itemCount: itemCount,
              shrinkWrap: true,
              itemBuilder: builder,
            ),
          ),
        ],
      ),
    );
  }
}

/// Listview with loading skeleton and loading more
class MRefreshListViewV2<T> extends StatelessWidget {
  final List<Widget>? titles;
  final EdgeInsetsGeometry? padding;
  final Widget Function(T, int) item;
  final Widget? skeletonWidget;
  final PagingDataBloc<T> bloc;
  final String? titleEmptyPage;
  final Widget? emptyPage;
  final bool? hasBottomBar;

  const MRefreshListViewV2({
    Key? key,
    this.titles,
    this.padding,
    required this.item,
    this.skeletonWidget,
    required this.bloc,
    this.titleEmptyPage,
    this.hasBottomBar,
    this.emptyPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        stream: bloc.loadingStream,
        builder: (context, snapLoading) {
          return Column(
            children: [
              ...?titles,
              Expanded(
                child: Stack(
                  children: [
                    Positioned.fill(child: mainContent(snapLoading.data)),
                    Positioned.fill(
                        child: (snapLoading.data ?? true)
                            ? loadingContent()
                            : const SizedBox.shrink())
                  ],
                ),
              ),
            ],
          );
        });
  }

  Widget mainContent(bool? isLoading) {
    return StreamBuilder<List<T>?>(
        stream: bloc.dataStream,
        builder: (context, snap) {
          return (!snap.hasError
              ? (snap.data?.isNotEmpty ?? false
                  ? (isLoading ?? true)
                      ? const SizedBox.shrink()
                      : (LayoutBuilder(builder: (context, constraint) {
                          return RefreshIndicator(
                            onRefresh: bloc.refresh,
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                minHeight: constraint.minHeight,
                              ),
                              child: ListView.builder(
                                physics: const BouncingScrollPhysics(
                                  parent: AlwaysScrollableScrollPhysics(),
                                ),
                                padding: padding,
                                itemCount: (snap.data?.length ?? 0) +
                                    (hasBottomBar ?? false ? 2 : 1),
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  if (index == (snap.data?.length ?? 0) + 1) {
                                    return const IphoneXBottomBarSpace();
                                  }
                                  if (index == (snap.data?.length ?? 0)) {
                                    return LoadingMoreWidget(
                                      bloc: bloc,
                                      loadingMoreContent: () =>
                                          loadingMoreContent(
                                              snap.data?.length ?? 0),
                                    );
                                  }
                                  return item(snap.data![index], index);
                                },
                              ),
                            ),
                          );
                        }))
                  : emptyPage ??
                      //TODO emptyPage
                      const SizedBox())
              : //TODO emptyPage with error
              const SizedBox());
        });
  }

  Widget loadingContent() {
    return Container(
      color: AppColors.mainBG,
      margin: padding,
      child: MRefreshListView(
        onRefresh: bloc.refresh,
        builder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(
              bottom: AppDimens.kSpaceVertical,
            ),
            child: skeletonWidget,
          );
        },
        itemCount: 3,
      ),
    );
  }

  Widget loadingMoreContent(int length) {
    var remainingAmount = bloc.total - length;
    remainingAmount = remainingAmount <= 0 ? 1 : remainingAmount;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...List<Widget>.generate(remainingAmount > 3 ? 3 : remainingAmount,
            (index) {
          return Container(
            margin: const EdgeInsets.only(
              bottom: AppDimens.kSpaceVertical,
            ),
            child: skeletonWidget,
          );
        })
      ],
    );
  }
}

/// Listview Detect position
class MListViewV2<T> extends StatelessWidget {
  final List<Widget>? titles;
  final EdgeInsetsGeometry? padding;
  final Widget Function(T, int) item;
  final Widget? skeletonWidget;
  final BaseBlocWithError bloc;
  final Stream<List<T>> data;
  final Stream<bool>? loadingMoreStream;
  final String? titleEmptyPage;
  final bool? hasBottomBar;
  final ScrollController? controller;
  final bool? reverse;
  final GlobalKey<RectGetterState> globalKey;
  final List<GlobalKey<RectGetterState>> keys;
  final bool Function(List<T> items)? onNotification;
  final int? total;
  final Function? loadMore;

  const MListViewV2(
      {Key? key,
      this.titles,
      this.padding,
      required this.item,
      this.skeletonWidget,
      required this.bloc,
      this.titleEmptyPage,
      this.hasBottomBar,
      this.controller,
      this.reverse,
      required this.globalKey,
      required this.keys,
      this.onNotification,
      required this.data,
      this.total,
      this.loadingMoreStream,
      this.loadMore})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        stream: bloc.loadingStream,
        builder: (context, snapLoading) {
          return Stack(
            children: [
              Positioned.fill(child: mainContent()),
              Positioned.fill(
                  child: (snapLoading.data ?? true)
                      ? loadingContent()
                      : const SizedBox.shrink())
            ],
          );
        });
  }

  Widget mainContent() {
    return StreamBuilder<List<T>?>(
        stream: data,
        builder: (context, snap) {
          return (!snap.hasError
              ? (snap.data?.isNotEmpty ?? false
                  ? NotificationListener<ScrollUpdateNotification>(
                      onNotification: (notification) {
                        return onNotification?.call(snap.data!) ?? true;
                      },
                      child: RectGetter(
                        key: globalKey,
                        child: Column(
                          children: [
                            ...?titles,
                            Expanded(
                              child: ListView.builder(
                                controller: controller,
                                reverse: reverse ?? false,
                                physics: const BouncingScrollPhysics(
                                  parent: AlwaysScrollableScrollPhysics(),
                                ),
                                padding: padding,
                                itemCount: (snap.data?.length ?? 0) +
                                    (hasBottomBar ?? false ? 2 : 1),
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  if (index == (snap.data?.length ?? 0) + 1) {
                                    return const IphoneXBottomBarSpace();
                                  }
                                  if (index == (snap.data?.length ?? 0)) {
                                    loadMore?.call();
                                    return loadingMoreContent(
                                        snap.data?.length ?? 0);
                                  }
                                  return item(snap.data![index], index);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : //TODO emptyPage
                  const SizedBox())
              : //TODO emptyPage with error
              const SizedBox());
        });
  }

  Widget loadingContent() {
    return Container(
      color: AppColors.mainBG,
      margin: padding,
      child: Column(
        children: [
          ...titles ?? [],
          Expanded(
            child: ListView.builder(
              reverse: reverse ?? false,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(
                    bottom: AppDimens.kSpaceVertical,
                  ),
                  child: skeletonWidget,
                );
              },
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }

  Widget loadingMoreContent(int length) {
    var remainingAmount = total ?? 0 - length;
    remainingAmount = remainingAmount <= 0 ? 1 : remainingAmount;

    return StreamBuilder<bool>(
        stream: loadingMoreStream,
        builder: (context, snapLoadingMore) {
          return loadingMoreWidget(remainingAmount);
        });
  }

  Widget loadingMoreWidget(int remainingAmount) {
    return !((bloc is PagingDataBloc)
            ? (bloc as PagingDataBloc).isLastPage
            : false)
        ? Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ...List<Widget>.generate(
                  remainingAmount > 3 ? 3 : remainingAmount, (index) {
                return Container(
                  margin: const EdgeInsets.only(
                    bottom: AppDimens.kSpaceVertical,
                  ),
                  child: skeletonWidget,
                );
              })
            ],
          )
        : reverse ?? false
            ? const SizedBox.shrink()
            : const IphoneXBottomBarSpace();
  }
}

class LoadingMoreWidget extends StatelessWidget {
  final PagingDataBloc<dynamic> bloc;
  final Widget Function()? loadingMoreContent;
  const LoadingMoreWidget(
      {Key? key, required this.bloc, this.loadingMoreContent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        stream: bloc.loadingMoreStream,
        builder: (context, snapLoadingMore) {
          return !bloc.isLastPage
              ? loadingMoreContent?.call() ?? const SizedBox.shrink()
              : const IphoneXBottomBarSpace();
        });
  }
}
