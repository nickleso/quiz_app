import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void onQiuzStart() {
    print("**start quiz**");
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(color: Colors.amber),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/quiz-logo.png',
                  width: 250,
                ),
                const SizedBox(height: 36),
                const Text(
                  "Learn Flutter the fun way!",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 16),
                ),
                const SizedBox(height: 24),
                FilledButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.amber[700],
                  ),
                  onPressed: onQiuzStart,
                  child: const Text(
                    "Start Quiz",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
