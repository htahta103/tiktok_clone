part of '../common_widget.dart';

class MScrollView extends StatelessWidget {
  final Widget? child;
  final Axis? scrollDirection;
  final ScrollPhysics? physics;
  const MScrollView({Key? key, this.child, this.scrollDirection, this.physics})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: scrollDirection ?? Axis.vertical,
      physics: const BouncingScrollPhysics(), // ios
      // physics: const ClampingScrollPhysics(),// android
      child: child ?? const SizedBox.shrink(),
    );
  }
}

class MRefreshScrollView extends StatelessWidget {
  final Future<void> Function() onRefresh;
  final Widget? child;
  final Axis? scrollDirection;

  const MRefreshScrollView({
    Key? key,
    this.child,
    required this.onRefresh,
    this.scrollDirection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          scrollDirection: scrollDirection ?? Axis.vertical,
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraint.minHeight,
              ),
              child: child ?? const SizedBox.shrink()),
        ),
      );
    });
  }
}

class MLazyLoadRefreshScrollView extends StatelessWidget {
  final Future<void> Function() onRefresh;
  final List<Widget>? child;
  final Axis? scrollDirection;
  final List<Object>? items;
  final Widget? loadingWidget;
  final Widget Function(Object item)? itemWidget;

  const MLazyLoadRefreshScrollView({
    Key? key,
    this.child,
    required this.onRefresh,
    this.scrollDirection,
    this.items,
    this.loadingWidget,
    this.itemWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var maxLength = items?.length ?? 0;
    return LayoutBuilder(builder: (context, constraint) {
      return RefreshIndicator(
        onRefresh: onRefresh,
        child: CustomScrollView(
          scrollDirection: scrollDirection ?? Axis.vertical,
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                child ?? <Widget>[],
              ),
            ),
            maxLength > 0
                ? SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        if (index == maxLength) {
                          return loadingWidget;
                        }
                        return itemWidget?.call(items![index]);
                      },
                      childCount: maxLength + 1,
                    ),
                  )
                : SliverList(delegate: SliverChildListDelegate([])),
            const SliverToBoxAdapter(
              child: IphoneXBottomBarSpace(),
            )
          ],
        ),
      );
    });
  }
}

class MLazyLoadRefreshScrollViewV2<T> extends StatelessWidget {
  final Future<void> Function() onRefresh;
  final List<Widget>? child;
  final Axis? scrollDirection;
  final Widget Function(T, int) item;
  final PagingDataBloc<T> bloc;
  final Widget skeletonWidget;
  final int? numOfSkeletonWidget;
  final String? titleEmptyPage;
  final Widget? emptyPage;
  final EdgeInsetsGeometry? padding;
  final Widget? title;

  const MLazyLoadRefreshScrollViewV2({
    Key? key,
    this.child,
    required this.onRefresh,
    this.scrollDirection,
    required this.item,
    required this.bloc,
    required this.skeletonWidget,
    this.numOfSkeletonWidget,
    this.titleEmptyPage,
    this.emptyPage,
    this.padding,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        stream: bloc.loadingStream,
        builder: (context, snapLoading) {
          return LayoutBuilder(builder: (context, constraint) {
            return snapLoading.data ?? true
                ? loadingContent()
                : mainContent(context, snapLoading.data);
          });
        });
  }

  Widget mainContent(BuildContext context, bool? isLoading) {
    return StreamBuilder<List<T>>(
        stream: bloc.dataStream,
        builder: (_, snap) {
          return () {
            List<T>? listItem = snap.data;
            var maxLength = listItem?.length ?? 0;
            return maxLength > 0
                ? ((isLoading ?? true)
                    ? const SizedBox.shrink()
                    : RefreshIndicator(
                        onRefresh: onRefresh,
                        child: CustomScrollView(
                          scrollDirection: scrollDirection ?? Axis.vertical,
                          physics: const BouncingScrollPhysics(
                            parent: AlwaysScrollableScrollPhysics(),
                          ),
                          slivers: [
                            SliverList(
                              delegate: SliverChildListDelegate(
                                child ?? <Widget>[],
                              ),
                            ),
                            maxLength > 0
                                ? SliverPadding(
                                    padding: padding ?? const EdgeInsets.all(0),
                                    sliver: SliverList(
                                      delegate: SliverChildBuilderDelegate(
                                        (BuildContext context, int index) {
                                          if (index == maxLength) {
                                            return loadingMoreContent(listItem);
                                          }
                                          return item.call(
                                              listItem![index], index);
                                        },
                                        childCount: maxLength + 1,
                                      ),
                                    ),
                                  )
                                : SliverList(
                                    delegate: SliverChildListDelegate([])),
                            const SliverToBoxAdapter(
                              child: IphoneXBottomBarSpace(),
                            )
                          ],
                        ),
                      ))
                : snap.hasData
                    ? (emptyPage ??
                        //TODO Empty Page with titleEmptyPage
                        // EmptyPage.emptyImage(
                        //   title: titleEmptyPage ?? S.current.empty,
                        // ))
                        const SizedBox.shrink())
                    : const SizedBox.shrink();
          }();
        });
  }

  Widget loadingMoreContent(List<T>? listItem) {
    return StreamBuilder<bool>(
        stream: bloc.loadingMoreStream,
        builder: (context, snapLoadingMore) {
          var remainingAmount = bloc.total - (listItem!.length);
          remainingAmount = remainingAmount <= 0 ? 1 : remainingAmount;
          return !bloc.isLastPage
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ...List<Widget>.generate(
                        remainingAmount > (numOfSkeletonWidget ?? 3)
                            ? (numOfSkeletonWidget ?? 3)
                            : remainingAmount, (index) {
                      return Container(
                        margin: const EdgeInsets.only(
                          bottom: AppDimens.kSpaceVertical,
                        ),
                        child: skeletonWidget,
                      );
                    })
                  ],
                )
              : const SizedBox.shrink();
        });
  }

  Widget loadingContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...child ?? <Widget>[],
        Expanded(
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
        ),
      ],
    );
  }
}

class MRefreshScrollViewV2 extends StatelessWidget {
  final Future<void> Function() onRefresh;
  final Widget? child;
  final List<Widget>? title;
  final EdgeInsets? contentPadding;
  final Axis? scrollDirection;
  final Widget skeletonWidget;
  final BaseBlocWithError bloc;
  final int? numOfSkeletons;

  const MRefreshScrollViewV2({
    Key? key,
    this.child,
    required this.onRefresh,
    this.scrollDirection,
    required this.bloc,
    required this.skeletonWidget,
    this.title,
    this.numOfSkeletons,
    this.contentPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return StreamBuilder<bool>(
          stream: bloc.loadingStream,
          builder: (context, snapLoading) {
            return (snapLoading.data ?? true)
                ? loadingContent(constraint)
                : mainContent(
                    constraint,
                  );
          });
    });
  }

  Widget mainContent(BoxConstraints constraint) {
    return MRefreshScrollView(
      onRefresh: onRefresh,
      scrollDirection: scrollDirection ?? Axis.vertical,
      child: Container(
        padding: contentPadding,
        constraints: BoxConstraints(
          minHeight: constraint.minHeight,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...title ?? <Widget>[],
            child ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }

  Widget loadingContent(BoxConstraints constraint) {
    return MRefreshScrollView(
      onRefresh: onRefresh,
      child: Container(
        margin: contentPadding,
        constraints: BoxConstraints(
          minHeight: constraint.maxHeight + 1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...title ?? <Widget>[],
            ...List.generate(numOfSkeletons ?? 3, (index) {
              return skeletonWidget;
            })
          ],
        ),
      ),
    );
  }
}

class MNestedScrollView extends StatelessWidget {
  final Widget? title;
  final Widget body;
  final EdgeInsetsGeometry? padding;
  final double expandedHeight;
  const MNestedScrollView(
      {Key? key,
      this.title,
      required this.body,
      this.padding,
      required this.expandedHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      padding: padding,
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
                shadowColor: Colors.transparent,
                floating: true,
                snap: true,
                backgroundColor: AppColors.mainBG,
                automaticallyImplyLeading: false,
                expandedHeight: expandedHeight,
                flexibleSpace: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  return FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    centerTitle: true,
                    background: title,
                  );
                })),
          ];
        },
        body: body,
      ),
    );
  }
}

class MCustomScrollViewSliverTitle extends StatelessWidget {
  final Widget title;
  final Widget body;
  final double maxHeight;
  final double minHeight;
  const MCustomScrollViewSliverTitle(
      {Key? key,
      required this.title,
      required this.body,
      required this.maxHeight,
      required this.minHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPersistentHeader(
          delegate: MyDelegate(
            maxHeight,
            minHeight,
            child: title,
          ),
        ),
        body,
      ],
    );
  }
}

class MyDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double maxHeight;
  final double minHeight;

  MyDelegate(this.maxHeight, this.minHeight, {required this.child});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    throw UnimplementedError();
  }
}
