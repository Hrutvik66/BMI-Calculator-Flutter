import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: const InputPage(),
      title: "BMI Calculator",
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
    ),
  );
}
