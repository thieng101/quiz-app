import 'package:flutter/material.dart';
import 'package:quiz_app/start_scren.dart';

void main() {
  runApp(MaterialApp(
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
              child: const StartScreen()))));
}
