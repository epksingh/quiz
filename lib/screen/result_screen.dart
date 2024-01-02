import 'package:flutter/material.dart';
import '../summary/question_summary.dart';

import '../data/question.dart';

class ResultScreen extends StatelessWidget {
  final List<String> answers;
  final void Function() restartQuiz;

  const ResultScreen(this.answers, this.restartQuiz, {super.key});
  List<Map<String, Object>> getSummary() {
    List<Map<String, Object>> summaryData = [];

    for (var i = 0; i < questions.length; i++) {
      summaryData.add({
        "question_index": i,
        "question": questions[i].question,
        "currect_answer": questions[i].options[0],
        "choosen_answer": answers[i],
      });
    }
    return summaryData;
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> resultList = getSummary();
    final int currectAnswer = resultList
        .where((result) => result["currect_answer"] == result["choosen_answer"])
        .length;

    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Your have answered $currectAnswer question correctly",
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          QuestionSummary(summaryData: resultList),
          const SizedBox(
            height: 40,
          ),
          TextButton.icon(
              onPressed: restartQuiz,
              icon: const Icon(Icons.refresh),
              label: const Text("restart quiz"),
              style: TextButton.styleFrom(
                foregroundColor: Color.fromARGB(255, 195, 209, 205),
              ))
        ],
      ),
    );
  }
}
