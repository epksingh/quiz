import 'package:flutter/material.dart';

import '../data/question.dart';
import '../option_button.dart';

class QuestionScreen extends StatefulWidget {
  final void Function() goToResultScreen;
  final List<String> answers;

  const QuestionScreen(this.goToResultScreen, this.answers, {super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentQuestionIndex = 0;

  void nextScreen(String selectedOption) {
    currentQuestionIndex += 1;
    widget.answers.add(selectedOption);
    if (currentQuestionIndex == questions.length) {
      widget.goToResultScreen();
    } else {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            questions[currentQuestionIndex].question,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          ...currentQuestion.getShuffedOptions().map((option) {
            return OptionsButton(
              option: option,
              onPressed: () {
                nextScreen(option);
              },
            );
          }).toList(),
        ],
      ),
    );
  }
}
