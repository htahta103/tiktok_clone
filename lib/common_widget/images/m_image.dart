part of commonWidget;

class MImage extends StatelessWidget {
  final String? path;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Color? color;
  final double? radius;
  final BlendMode? colorBlendMode;

  const MImage(
    this.path, {
    Key? key,
    this.width,
    this.height,
    this.fit,
    this.color,
    this.radius,
    this.colorBlendMode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(radius ?? 0)),
      child: _buildImage(context),
    );
  }

  Widget _buildImage(BuildContext context) {
    if (path != null) {
      if (StringUtil.isNetworkImage(path)) {
        // double? loadingSize = (width ?? 0) > (height ?? 0) ? height : width;
        return CachedNetworkImage(
          color: color,
          width: width,
          height: height,
          fit: fit,
          imageUrl: path!,
          placeholder: (context, url) => Container(
            color: AppColors.buttonBG,
          ),
          // placeholder: (context, url) => LoadingWidget(
          //   size: loadingSize ?? 90.w,
          //   color: AppColors.medEmText,
          // ),
          errorWidget: (context, url, error) => Container(
            color: AppColors.buttonBG,
          ),
          colorBlendMode: colorBlendMode,
        );
      } else {
        return Image.asset(
          path!,
          width: width,
          height: height,
          fit: fit,
          color: color,
          colorBlendMode: colorBlendMode,
        );
      }
    } else {
      return Container(
        color: AppColors.buttonBG,
        width: width,
        height: height,
      );
    }
  }
}
