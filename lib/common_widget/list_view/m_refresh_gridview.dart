part of '../common_widget.dart';

class MRefreshGridView extends StatelessWidget {
  final Future<void> Function() onRefresh;
  final int itemCount;
  final List<Widget>? titles;
  final EdgeInsetsGeometry? padding;
  final Widget Function(BuildContext, int) itemBuilder;
  final SliverGridDelegate gridDelegate;
  final bool? shrinkWrap;

  const MRefreshGridView({
    Key? key,
    required this.onRefresh,
    required this.itemCount,
    required this.itemBuilder,
    this.titles,
    this.padding,
    required this.gridDelegate,
    this.shrinkWrap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: Column(
        children: [
          ...?titles,
          Expanded(
            child: GridView.builder(
              physics: (shrinkWrap ?? false)
                  ? const NeverScrollableScrollPhysics()
                  : const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics(),
                    ),
              padding: padding,
              itemCount: itemCount,
              shrinkWrap: shrinkWrap ?? true,
              itemBuilder: itemBuilder,
              gridDelegate: gridDelegate,
            ),
          ),
        ],
      ),
    );
  }
}

//Gridview with skeleton loading
class MRefreshGridViewV2<T> extends StatelessWidget {
  final List<Widget>? titles;
  final EdgeInsetsGeometry? padding;
  final SliverGridDelegate gridDelegate;
  final bool? shrinkWrap;
  final PagingDataBloc<T> bloc;
  final String? titleEmptyPage;
  final Widget? emptyPage;
  final Widget Function(T, int) buildItem;
  final Widget Function(int) skeletonWidget;
  final Future<void> Function()? refresh;

  const MRefreshGridViewV2({
    Key? key,
    this.titles,
    this.padding,
    required this.gridDelegate,
    this.shrinkWrap,
    required this.bloc,
    this.titleEmptyPage,
    required this.buildItem,
    required this.skeletonWidget,
    this.refresh,
    this.emptyPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: StreamBuilder<bool>(
          stream: bloc.loadingStream,
          builder: (context, snapLoading) {
            return Stack(
              children: [
                Positioned.fill(child: mainContent()),
                Positioned.fill(
                    child: snapLoading.data ?? true
                        ? loadingContent()
                        : const SizedBox.shrink())
              ],
            );
          }),
    );
  }

  Widget mainContent() {
    return StreamBuilder<List<T>?>(
        stream: bloc.dataStream,
        builder: (context, snap) {
          return RefreshIndicator(
            onRefresh: refresh ?? bloc.refresh,
            child: (() {
              if (snap.hasData) {
                if (snap.data == null || snap.data!.isEmpty) {
                  return Center(
                      child: emptyPage ??
                          //TODO empty page with titleEmptyPage
                          const SizedBox());
                }
                var items = snap.data;
                var count = (snap.data?.length ?? 0);
                return Column(
                  children: [
                    ...?titles,
                    Expanded(
                      child: GridView.builder(
                        physics: (shrinkWrap ?? false)
                            ? const NeverScrollableScrollPhysics()
                            : const BouncingScrollPhysics(
                                parent: AlwaysScrollableScrollPhysics(),
                              ),
                        padding: padding,
                        itemCount: count +
                            (bloc.isLastPage ? 0 : (count % 2 != 0 ? 1 : 2)),
                        shrinkWrap: shrinkWrap ?? true,
                        itemBuilder: (BuildContext context, int index) {
                          if (index >= items!.length) {
                            return skeletonWidget(index);
                          }
                          return buildItem.call(items[index], index);
                        },
                        gridDelegate: gridDelegate,
                      ),
                    ),
                  ],
                );
              } else if (snap.hasError) {
                return
                    //TODO empty page with error
                    const SizedBox();
              } else {
                return const SizedBox.shrink();
              }
            })(),
          );
        });
  }

  Widget loadingContent() {
    return Container(
      color: AppColors.mainBG,
      child: Column(
        children: [
          Expanded(
            child: GridView.builder(
              physics: (shrinkWrap ?? false)
                  ? const NeverScrollableScrollPhysics()
                  : const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics(),
                    ),
              padding: padding,
              itemCount: 2,
              shrinkWrap: shrinkWrap ?? true,
              itemBuilder: (BuildContext context, int index) {
                return skeletonWidget(index);
              },
              gridDelegate: gridDelegate,
            ),
          ),
        ],
      ),
    );
  }
}

class MRefreshGridViewV3<T> extends StatelessWidget {
  final List<Widget>? titles;
  final EdgeInsetsGeometry? padding;
  final SliverGridDelegate gridDelegate;
  final bool? shrinkWrap;
  final List<T> items;
  final String? titleEmptyPage;
  final Widget Function(T, int) buildItem;
  final Widget Function(int) skeletonWidget;
  final Future<void> Function() refresh;
  final BaseBlocWithError bloc;

  const MRefreshGridViewV3({
    Key? key,
    this.titles,
    this.padding,
    required this.gridDelegate,
    this.shrinkWrap,
    this.titleEmptyPage,
    required this.buildItem,
    required this.skeletonWidget,
    required this.refresh,
    required this.items,
    required this.bloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        stream: bloc.loadingStream,
        builder: (context, snapLoading) {
          return (snapLoading.data ?? true) ? loadingContent() : mainContent();
        });
  }

  Widget mainContent() {
    return RefreshIndicator(
      onRefresh: refresh,
      child: (() {
        var count = (items.length);
        return Column(
          children: [
            ...?titles,
            Expanded(
              child: GridView.builder(
                physics: (shrinkWrap ?? false)
                    ? const NeverScrollableScrollPhysics()
                    : const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics(),
                      ),
                padding: padding,
                itemCount: count,
                shrinkWrap: shrinkWrap ?? true,
                itemBuilder: (BuildContext context, int index) {
                  return buildItem.call(items[index], index);
                },
                gridDelegate: gridDelegate,
              ),
            ),
          ],
        );
      })(),
    );
  }

  Widget loadingContent() {
    return Container(
      color: AppColors.mainBG,
      child: Column(
        children: [
          ...?titles,
          Expanded(
            child: GridView.builder(
              physics: (shrinkWrap ?? false)
                  ? const NeverScrollableScrollPhysics()
                  : const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics(),
                    ),
              padding: padding,
              itemCount: 4,
              shrinkWrap: shrinkWrap ?? true,
              itemBuilder: (BuildContext context, int index) {
                return skeletonWidget(index);
              },
              gridDelegate: gridDelegate,
            ),
          ),
        ],
      ),
    );
  }
}
