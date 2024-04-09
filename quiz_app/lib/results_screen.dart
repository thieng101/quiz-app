import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/summary_data.dart';

class ResultScreen extends StatelessWidget {
  final List<String> chosenAnswers;
  const ResultScreen({super.key, required this.chosenAnswers});

  List<Map<String, Object>> getSummaryDara() {
    List<Map<String, Object>> summary = [];

    debugPrint("chosenanswer:");
    debugPrint(chosenAnswers.length.toString());

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        "question_index": i,
        "question": questions[i].question,
        "answer": chosenAnswers[i],
        "correctAnswer": questions[i].answers[0],
        "userAnswer": chosenAnswers[i],
      });
    }
    // debugPrint(summary.length.toString());

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summary = getSummaryDara();
    var totalQuestions = questions.length;
    var totalCorrectAnswer = summary
        .where((element) => element["correctAnswer"] == element["userAnswer"])
        .length;

    return Container(
        margin: const EdgeInsets.all(40),
        child: SizedBox(
            width: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                      "You have answered $totalCorrectAnswer out of $totalQuestions questions correctly!",
                      style: GoogleFonts.lato(
                          color: Colors.purple[100],
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                  const SizedBox(height: 20),
                  SummaryData(summaryData: summary),
                  const SizedBox(height: 20),
                  TextButton(
                      onPressed: () {},
                      child: const Text("Reset the quiz!",
                          style: TextStyle(color: Colors.white, fontSize: 20))),
                ])));
  }
}
