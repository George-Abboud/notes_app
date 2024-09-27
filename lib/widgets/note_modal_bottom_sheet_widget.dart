import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button_widget.dart';
import 'package:notes_app/widgets/custom_text_field_widget.dart';

class NoteModalBottomSheet extends StatelessWidget {
  const NoteModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              onChanged: (data) {},
              hintText: 'Title',
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              onChanged: (data) {},
              hintText: 'Content',
              maxLines: 5,
            ),
            const SizedBox(
              height: 48,
            ),
            CustomButtonWidget(onTap: () {}, title: 'Add'),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
