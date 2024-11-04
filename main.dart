import 'package:flutter/material.dart';
import 'language_screen.dart';

void main() {
  runApp(LanguageLearningApp());
}

class LanguageLearningApp extends StatelessWidget {
  const LanguageLearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Language Learning App',
      theme: ThemeData(primarySwatch: Colors.green),
      home: LanguageScreen(),
    );
  }
}
