import 'package:flutter/material.dart';
import 'package:quiz/summary/summary_item.dart';

class QuestionSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const QuestionSummary({
    super.key,
    required this.summaryData,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: getItemWidget().toList(),
        ),
      ),
    );
  }

  Iterable<QuestionItem> getItemWidget() {
    return summaryData.map(
      (data) {
        return QuestionItem(data: data);
      },
    );
  }
}
