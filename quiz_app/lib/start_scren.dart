import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/pictures/quiz-logo.png',
            width: 300, height: 400, color: Color.fromARGB(155, 255, 255, 255)),
        const Text('Learn Flutter the fun way!',
            style: TextStyle(fontSize: 20, color: Colors.white)),
        const SizedBox(height: 20),
        OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.keyboard_double_arrow_right),
            label: const Text("Start Quiz", style: TextStyle(fontSize: 20))),
      ],
    ));
  }
}