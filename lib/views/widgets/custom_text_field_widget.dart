import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {required this.onChanged,
      super.key,
      required this.hintText,
      this.obscure = false,
      this.inputType});

  bool? obscure;
  final String hintText;
  Function(String)? onChanged;
  TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextField(
        cursorColor: kPrimaryColor,
        keyboardType: inputType,
        obscureText: obscure!,
        onChanged: onChanged,
        style: const TextStyle(color: kPrimaryColor),
        decoration: InputDecoration(
          hintText: hintText,
          filled: false,
          hintStyle: const TextStyle(
            color: Color(0xBAFDCA7E),
          ),
          enabledBorder: buildBorder(color: const Color(0xBAFDCA7E), width: 1),
          focusedBorder: buildBorder(color: kPrimaryColor, width: 2),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder(
      {required Color color, required double width}) {
    ;
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: color, width: width),
    );
  }
}
