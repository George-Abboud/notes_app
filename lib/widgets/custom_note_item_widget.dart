import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return const EditNoteView();
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Container(
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  title: Text(
                    note.title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      note.content,
                      style:
                          const TextStyle(color: Colors.black38, fontSize: 14),
                    ),
                  ),
                  trailing: const Icon(
                    Icons.delete,
                    size: 28,
                    color: Colors.black,
                  ),
                ),
                Text(
                  note.date,
                  style: const TextStyle(color: Colors.black26, fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
