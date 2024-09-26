import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_search_icon_widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Text(
            'Notes',
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.w900),
          ),
          Spacer(),
          CustomSearchIcon(),
        ],
      ),
    );
  }
}
