import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

import 'package:notes_app/widgets/color_item_widget.dart';

class EditSectionColorsListView extends StatefulWidget {
  const EditSectionColorsListView({super.key, required this.note});

  final NoteModel note;
  @override
  State<EditSectionColorsListView> createState() =>
      _EditSectionColorsListViewState();
}

class _EditSectionColorsListViewState extends State<EditSectionColorsListView> {
  late int currentIndex;

  @override
  void initState() {
    for (int i = 0; i < kColors.length; i++) {
      if (widget.note.color == kColors[i].value) {
        currentIndex = i;
        break;
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kColors.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = kColors[index].value;
                setState(() {});
              },
              child: ColorItem(
                color: kColors[index],
                isActive: currentIndex == index,
                padding: index == 0
                    ? const EdgeInsets.only(left: 16, right: 4)
                    : index == 9
                        ? const EdgeInsets.only(right: 16, left: 4)
                        : const EdgeInsets.symmetric(horizontal: 4),
              ),
            );
          }),
    );
  }
}
