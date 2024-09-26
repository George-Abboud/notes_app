import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar_widget.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 48,
          ),
          CustomAppBar(),
          CustomNoteItem()
        ],
      ),
    );
  }
}

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFFFDB851),
          borderRadius: BorderRadius.circular(12)),
      child: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(
                'Flutter Tips',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  'Build your flutter project with George Abboud',
                  style: TextStyle(color: Colors.black38, fontSize: 14),
                ),
              ),
              trailing: Icon(
                Icons.delete,
                size: 28,
                color: Colors.black,
              ),
            ),
            Text(
              'May 21,2022',
              style: TextStyle(color: Colors.black26, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
