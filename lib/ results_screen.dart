import 'package:flutter/material.dart';
import 'package:second_app/data/question.dart';
import 'package:second_app/questions_summary/question_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });

  final void Function() onRestart;
  final List<String> chosenAnswers;

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': question[i].text,
          'correct_answer': question[i].answers[0],
          'user_answer': chosenAnswers[i]
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    // final summaryData = getSummaryData();
    final numTotalQuestions = question.length;
    final numCorrectQuestions = summaryData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'you answered $numCorrectQuestions out of $numTotalQuestions questions correctly!'),
            const SizedBox(
              height: 20,
            ),
            const Text('List of answer and questions.... '),
            const SizedBox(
              height: 20,
            ),
            QuestionSummary(summaryData),
            TextButton(
              onPressed: () {},
              // ignore: prefer_const_constructors
              child: Text('Restart Quizi'),
            )
          ],
        ),
      ),
    );
  }
}
