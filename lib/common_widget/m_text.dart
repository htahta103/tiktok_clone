part of commonWidget;

class MText extends StatelessWidget {
  final String? text;
  final TextStyle? style;
  final TextStyle? mainStyle;
  final TextAlign? textAlign;
  const MText(
      {super.key, this.text, this.style, this.mainStyle, this.textAlign});

  factory MText.titleComment(String? text,
          {Key? key, TextStyle? style, TextAlign? textAlign}) =>
      MText(
        text: text,
        key: key,
        style: style,
        mainStyle: AppTextStyles.commentTitle,
        textAlign: textAlign,
      );

  factory MText.comment(String? text,
          {Key? key, TextStyle? style, TextAlign? textAlign}) =>
      MText(
        text: text,
        key: key,
        style: style,
        mainStyle: AppTextStyles.comment,
        textAlign: textAlign,
      );

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      style: mainStyle?.merge(style),
      textAlign: textAlign,
    );
  }
}
