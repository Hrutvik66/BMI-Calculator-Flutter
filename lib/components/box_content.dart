import 'package:flutter/material.dart';

class BoxContent extends StatelessWidget {
  const BoxContent({super.key, this.icon, required this.text});

  final IconData? icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80.0),
        const SizedBox(height: 15.0),
        Text(
          text,
          style: const TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}
