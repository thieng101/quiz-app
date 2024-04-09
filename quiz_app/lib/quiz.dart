import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_scren.dart';
import 'package:quiz_app/summary_data.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = "start-screen";

  void changeScreen() {
    setState(() {
      activeScreen = "questions-screen";
    });
  }

  void chooseAnswers(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = "results-screen";
      });
    }
  }

  Widget build(context) {
    Widget screen = StartScreen(changeScreen);

    if (activeScreen == "questions-screen") {
      screen = QuestionsScreen(onSelectAnswer: chooseAnswers);
    } else if (activeScreen == "results-screen") {
      screen = ResultScreen(chosenAnswers: selectedAnswers);
      selectedAnswers = [];
    }

    return MaterialApp(
        home: Scaffold(
            body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color.fromARGB(255, 168, 2, 213),
          Color.fromARGB(255, 98, 3, 115)
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: screen,
    )));
  }
}
