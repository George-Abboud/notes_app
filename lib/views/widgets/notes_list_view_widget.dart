import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_note_item_widget.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const CustomNoteItem();
        },
      ),
    );
  }
}
