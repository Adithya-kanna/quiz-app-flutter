// import 'package:flutter/material.dart';
// import 'package:second_app/question_screen.dart';

class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> get shuffledAnswers {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}



  
//   @override
//   State<QuizQuestion> createState() {
//     return _QuizQuestionState();
//   }
// }

// class _QuizQuestionState extends State<QuizQuestion> {
//   @override
//   Widget build(context) {
//     return Text(widget.text);
//   }
 
