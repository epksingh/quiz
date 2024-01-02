import 'package:flutter/material.dart';

class QuestionId extends StatelessWidget {
  final int questionIndex;
  final bool isCorrect;
  const QuestionId({
    super.key,
    required this.questionIndex,
    required this.isCorrect,
  });
  @override
  Widget build(context) {
    var idColor = isCorrect ? Colors.green : Colors.red;
    var questionNumber = questionIndex + 1;
    return Container(
      alignment: Alignment.center,
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: idColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
