import 'package:flutter/material.dart';

class Boxes extends StatelessWidget {
  const Boxes({super.key, required this.color, this.childOfBox});

  final Color color;
  final Widget? childOfBox;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: childOfBox,
    );
  }
}
