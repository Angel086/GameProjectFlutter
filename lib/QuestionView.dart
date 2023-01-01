import 'package:flutter/material.dart';
import 'package:game_project/quiz_screen.dart';


void main() {
  runApp(const QuestionView(test:"start"));
}

class QuestionView extends StatelessWidget {
  final String test;
  const QuestionView({Key? key, required this.test}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    debugPrint(test);

    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: QuizScreen(quizType: test));
  }
}