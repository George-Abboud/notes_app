import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem(
      {super.key,
      required this.padding,
      required this.isActive,
      required this.color});
  final EdgeInsetsGeometry padding;
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: isActive
          ? ActivatedColorItem(
              color: color,
            )
          : NonActivatedColorItem(
              color: color,
            ),
    );
  }
}

class ActivatedColorItem extends StatelessWidget {
  const ActivatedColorItem({
    super.key,
    required this.color,
  });
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 2),
      ),
      child: Stack(alignment: AlignmentDirectional.center, children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 32,
        ),
        const Icon(
          Icons.check,
          color: Colors.white,
          size: 24,
        )
      ]),
    );
  }
}

class NonActivatedColorItem extends StatelessWidget {
  const NonActivatedColorItem({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: color,
      radius: 32,
    );
  }
}
