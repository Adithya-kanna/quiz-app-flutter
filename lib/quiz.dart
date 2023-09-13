import 'package:flutter/material.dart';
import 'package:second_app/%20%20question_screen.dart';
import 'package:second_app/%20results_screen.dart';
import 'package:second_app/%20start_screen.dart';
import 'package:second_app/data/question.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  // final void Function(String answer) onSelectAnswer;
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> _selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    _selectedAnswers.add(answer);

    if (_selectedAnswers.length == question.length) {
      setState(() {
        _selectedAnswers = [];
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      _selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnswer,
      );
    }
    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: _selectedAnswers,
        onRestart: restartQuiz,
      );
    }

    // Widget screenWidget = StartScreen(switchScreen);
    // activeScreen == 'start-screen'
    // ? StartScreen(switchScreen)
    // : const QuestionScreen();

    // if (activeScreen == 'question-screen') {
    //  const  screenWidget = QuestionScreen();
    // }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(225, 78, 13, 151),
                Color.fromARGB(225, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
