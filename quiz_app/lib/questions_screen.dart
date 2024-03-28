import 'package:flutter/material.dart';

//create a class called Questions extended from statefulwidget
class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

//create a class called _QuestionsState extended from state
class _QuestionsScreenState extends State<QuestionsScreen> {
  //create a build method
  @override
  Widget build(BuildContext context) {
    return Text("hello world");
  }
}
