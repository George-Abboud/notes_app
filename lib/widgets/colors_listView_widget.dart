import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add%20note%20cubit/add_note_cubit.dart';
import 'package:notes_app/widgets/color_item_widget.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Colors.blueAccent,
    Colors.redAccent,
    kPrimaryColor,
    Colors.greenAccent,
    Colors.grey,
    Colors.pinkAccent,
    Colors.purpleAccent,
    Colors.brown
  ];
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
