import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field_widget.dart';

class NoteModalBottomSheet extends StatelessWidget {
  const NoteModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextField(onChanged: (data) {}, hintText: 'Title'),
        const SizedBox(
          height: 16,
        ),
        CustomTextField(
          onChanged: (data) {},
          hintText: 'Content',
          maxLines: 5,
        ),
      ],
    );
  }
}
