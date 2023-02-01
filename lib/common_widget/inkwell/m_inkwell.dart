part of '../common_widget.dart';

class MInkwell extends StatelessWidget {
  final Widget? child;
  final double? borderRadius;
  final double? inkWellRadius;
  final Color? color;
  final Function()? onPressed;
  final Color? focusColor;
  final Function(bool)? onFocusChange;

  const MInkwell({
    Key? key,
    this.child,
    this.borderRadius,
    this.color,
    this.onPressed,
    this.focusColor,
    this.onFocusChange,
    this.inkWellRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 0)),
      color: color ?? Colors.transparent,
      child: InkWell(
        onFocusChange: onFocusChange,
        borderRadius: BorderRadius.all(
          Radius.circular(inkWellRadius ?? (borderRadius ?? 50.w)),
        ),
        onTap: onPressed,
        splashColor: AppColors.transparent,
        highlightColor: AppColors.transparent,
        child: child,
      ),
    );
  }
}
