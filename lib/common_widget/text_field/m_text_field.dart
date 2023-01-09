part of '../common_widget.dart';

class MTextField extends StatelessWidget {
  final TextEditingController? controller;
  const MTextField({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: const InputDecoration(
          border: OutlineInputBorder(), labelText: "Enter text"),
    );
  }
}
