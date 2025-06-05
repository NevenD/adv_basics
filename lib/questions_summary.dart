import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        return Row(
          children: [
            Text(((data['question_index'] as int) + 1).toString()),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data['question'] as String),
                  const SizedBox(height: 5),
                  Text('Your answer: ${data['user_answer'] as String}'),
                  Text('Correct answer: ${data['correct_answer'] as String}'),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
