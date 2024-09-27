import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field_widget.dart';

class NoteModalBottomSheet extends StatelessWidget {
  const NoteModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [CustomTextField(onChanged: (data) {}, hintText: 'Title')],
    );
  }
}
