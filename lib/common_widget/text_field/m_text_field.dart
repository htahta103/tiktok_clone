part of '../common_widget.dart';

class MTextField extends StatelessWidget {
  final TextEditingController? controller;
  final InputBorder? border;
  final FocusNode? focusNode;
  final InputDecoration? inputDecoration;
  final TextStyle? textStyle;
  const MTextField(
      {super.key,
      this.controller,
      this.border,
      this.inputDecoration,
      this.textStyle,
      this.focusNode});

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: focusNode,
      controller: controller,
      style: textStyle,
      decoration: inputDecoration ??
          const InputDecoration(
              border: OutlineInputBorder(), hintText: "Enter text"),
    );
  }
}
