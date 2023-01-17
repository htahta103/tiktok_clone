part of commonWidget;

class MText extends StatelessWidget {
  final String? text;
  final TextStyle? style;
  const MText({super.key, this.text, this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      style: style ??
          const TextStyle(
            color: AppColors.white60,
          ),
    );
  }
}
