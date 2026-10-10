import 'package:flutter/material.dart';
import 'input_file.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculater',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF7F5A83),
        scaffoldBackgroundColor: Color(0xFF001035),
      ),
      home: const InputFile(title: 'BMI Calculater'),
      // <-- use the actual class name from input_file.dart
    );
  }
}
