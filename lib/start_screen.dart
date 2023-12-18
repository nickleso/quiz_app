import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            color: const Color.fromARGB(150, 0, 0, 0),
          ),
          const SizedBox(height: 36),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 16),
          ),
          const SizedBox(height: 24),
          FilledButton.icon(
            style: FilledButton.styleFrom(
              backgroundColor: Colors.amber[700],
            ),
            onPressed: startQuiz,
            icon: const Icon(
              color: Color.fromARGB(255, 0, 0, 0),
              Icons.star_rate_rounded,
            ),
            label: const Text(
              "Start Quiz",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
