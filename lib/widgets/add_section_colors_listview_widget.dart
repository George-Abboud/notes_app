import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add%20note%20cubit/add_note_cubit.dart';
import 'package:notes_app/widgets/color_item_widget.dart';

class AddSectionColorsListView extends StatefulWidget {
  const AddSectionColorsListView({super.key});

  @override
  State<AddSectionColorsListView> createState() =>
      _AddSectionColorsListViewState();
}

class _AddSectionColorsListViewState extends State<AddSectionColorsListView> {
  int currentIndex = 0;
  List<Color> colors = kColors;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
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
