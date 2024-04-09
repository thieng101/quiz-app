import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/quiz_question.dart';
import 'package:google_fonts/google_fonts.dart';

//create a class called Questions extended from statefulwidget
class QuestionsScreen extends StatefulWidget {
  final void Function(String answer) onSelectAnswer;

  const QuestionsScreen({super.key, required this.onSelectAnswer});

  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

//create a class called _QuestionsState extended from state
class _QuestionsScreenState extends State<QuestionsScreen> {
  var questionsIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      questionsIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final QuizQuestion currentQuestion = questions[questionsIndex];

    return Container(
      margin: const EdgeInsets.all(40),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.question,
                style: GoogleFonts.lato(
                    color: Colors.purple[100],
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
            const SizedBox(height: 30),
            ...currentQuestion.getshuffledQuestions().map((answer) {
              return AnswerButton(answer: answer,onTap: () => answerQuestion(answer));
            }),
          ],
        ),
      ),
    );
  }
}
