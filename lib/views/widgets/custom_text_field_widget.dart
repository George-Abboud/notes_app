import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.onChanged,
      required this.hintText,
      this.obscure = false,
      this.inputType,
      this.maxLines = 1});

  final bool obscure;
  final String hintText;
  final Function(String)? onChanged;
  final TextInputType? inputType;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      keyboardType: inputType,
      obscureText: obscure,
      onChanged: onChanged,
      style: const TextStyle(color: kPrimaryColor),
      decoration: InputDecoration(
        hintText: hintText,
        filled: false,
        hintStyle: const TextStyle(
          color: Color(0xBAFDCA7E),
        ),
        enabledBorder: buildBorder(color: const Color(0xBAFDCA7E)),
        focusedBorder: buildBorder(color: kPrimaryColor, width: 2),
      ),
    );
  }

  OutlineInputBorder buildBorder({required Color color, double width = 1}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: color, width: width),
    );
  }
}
