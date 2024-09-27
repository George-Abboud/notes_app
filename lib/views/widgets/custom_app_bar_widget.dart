import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_icon_widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.w900),
          ),
          const Spacer(),
          CustomIcon(
            icon: icon,
          ),
        ],
      ),
    );
  }
}
