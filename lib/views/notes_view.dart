import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/widgets/note_modal_bottom_sheet_widget.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const NoteModalBottomSheet();
            },
          );
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.black,
        foregroundColor: kPrimaryColor,
        shape: CircleBorder(),
      ),
      body: const NotesViewBody(),
    );
  }
}
