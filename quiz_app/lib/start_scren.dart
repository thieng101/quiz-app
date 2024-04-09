import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/questions_screen.dart';

class StartScreen extends StatelessWidget {
  final void Function() changeScreen;

  const StartScreen(this.changeScreen, {super.key});

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/pictures/quiz-logo.png',
            width: 300, height: 400, color: Color.fromARGB(155, 255, 255, 255)),
        Text('Learn Flutter the fun way!',
            style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
        const SizedBox(height: 20),
        OutlinedButton.icon(
            onPressed: () {
              changeScreen();
            },
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.keyboard_double_arrow_right),
            label: const Text("Start Quiz", style: TextStyle(fontSize: 20))),
      ],
    ));
  }
}
