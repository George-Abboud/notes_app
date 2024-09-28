import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.onSaved,
      required this.hintText,
      this.obscure = false,
      this.inputType,
      this.maxLines = 1});

  final bool obscure;
  final String hintText;
  final Function(String?)? onSaved;
  final TextInputType? inputType;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data) {
        if (data?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      keyboardType: inputType,
      obscureText: obscure,
      onSaved: onSaved,
      style: const TextStyle(color: kPrimaryColor),
      decoration: InputDecoration(
        focusedErrorBorder: buildBorder(color: Colors.red),
        errorBorder: buildBorder(color: Colors.red),
        errorStyle: const TextStyle(color: Colors.red),
        hintText: hintText,
        filled: false,
        hintStyle: const TextStyle(
          color: Color(0xBAFDCA7E),
        ),
        border: buildBorder(color: kinitColor),
        enabledBorder: buildBorder(color: kinitColor),
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
