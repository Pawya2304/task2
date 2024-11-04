import 'package:flutter/material.dart';
import 'word.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  int _currentIndex = 0;
  bool _showTranslation = false;

  // Sample vocabulary words
  final List<Word> _words = [
    Word(original: "Hello", translation: "Hola"),
    Word(original: "Thank you", translation: "Gracias"),
    Word(original: "Please", translation: "Por favor"),
    Word(original: "Goodbye", translation: "Adiós"),
    Word(original: "Excuse me", translation: "Perdón"),
  ];

  void _nextWord() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _words.length;
      _showTranslation = false;
    });
  }

  void _toggleTranslation() {
    setState(() {
      _showTranslation = !_showTranslation;
    });
  }
@override
  Widget build(BuildContext context) {
    final currentWord = _words[_currentIndex];

    return Scaffold(
      appBar: AppBar(title: const Text("Language Learning App")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _showTranslation ? currentWord.translation : currentWord.original,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _toggleTranslation,
                child: Text(_showTranslation ? "Show Original" : "Show Translation"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _nextWord,
                child: const Text("Next Word"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
