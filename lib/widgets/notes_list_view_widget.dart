import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/fetch%20notes/fetch_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_note_item_widget.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchNotesCubit, FetchNotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<FetchNotesCubit>(context).notes!;
        return Expanded(
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return CustomNoteItem(
                padding: index == 0
                    ? const EdgeInsets.only(top: 8, bottom: 4)
                    : index == notes.length - 1
                        ? const EdgeInsets.only(bottom: 24, top: 4)
                        : const EdgeInsets.symmetric(vertical: 4),
                note: notes[index],
              );
            },
          ),
        );
      },
    );
  }
}
