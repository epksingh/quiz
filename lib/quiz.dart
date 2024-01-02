import 'package:flutter/material.dart';
import 'package:quiz/screen/start_screen.dart';
import 'package:quiz/screen/question_screen.dart';
import 'package:quiz/screen/result_screen.dart';
import 'package:quiz/gradient_container.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = "start_screen";
  List<String> answers = [];

  void startQuiz() {
    setState(() {
      activeScreen = "question_screen";
    });
  }

  void resultScreen() {
    setState(() {
      activeScreen = "result_screen";
    });
  }

  void restartQuiz() {
    setState(() {
      activeScreen = "start_screen";
      answers = [];
    });
  }

  Widget getCurrentScreen() {
    switch (activeScreen) {
      case "question_screen":
        return QuestionScreen(resultScreen, answers);
      case "result_screen":
        return ResultScreen(answers, restartQuiz);
      case "start_quiz":
      default:
        return StartScreen(startQuiz);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          child: getCurrentScreen(),
        ),
      ),
    );
  }
}
