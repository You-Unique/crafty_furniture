import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String? label;
  final String? hint;
  final Widget? suffixWidget;
  final bool obscure;
  final Widget? prefixWidget;
  const InputField({
    super.key,
    required this.textEditingController,
    this.label,
    this.prefixWidget,
    this.suffixWidget,
    this.hint,
    this.obscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      obscureText: obscure,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18,
          // color: SkiColors.primaryColor,
        ),
        hintText: hint,
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 20,
        ),
        filled: true,
        prefixIcon: prefixWidget,
        suffixIcon: suffixWidget,
        fillColor: const Color.fromRGBO(249, 250, 251, 1),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
