import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar_widget.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 48,
        ),
        CustomAppBar()
      ],
    );
  }
}
