import 'package:flutter/material.dart';
import 'package:quiz/summary/question_id.dart';

class QuestionItem extends StatelessWidget {
  final Map<String, Object> data;
  const QuestionItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    var isCorrect = data["currect_answer"] == data["choosen_answer"];
    var questionIndex = data["question_index"] as int;
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionId(
          questionIndex: questionIndex,
          isCorrect: isCorrect,
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data["question"] as String,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 5),
              Text(
                data["currect_answer"] as String,
                style: const TextStyle(
                  color: Color.fromARGB(255, 66, 228, 52),
                ),
              ),
              Text(
                data["choosen_answer"] as String,
                style: const TextStyle(
                  color: Color.fromARGB(255, 165, 215, 56),
                ),
              ),
              const SizedBox(height: 20)
            ],
          ),
        )
      ],
    );
  }
}
