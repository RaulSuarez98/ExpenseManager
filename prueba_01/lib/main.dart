import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(AppTry01());

class AppTry01 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<AppTry01> {
  int _questionIndex = 0;
  int _totalScore = 0;
  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Blue', 'score': 4},
        {'text': 'Green', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite anima?',
      'answers': [
        {'text': 'Cat', 'score': 3},
        {'text': 'Dog', 'score': 6},
        {'text': 'Pig', 'score': 5},
        {'text': 'Duck', 'score': 3}
      ],
    },
    {
      'questionText': 'What\'s your favorite instructor?',
      'answers': [
        {'text': 'Manola', 'score': 1},
        {'text': 'Manolo', 'score': 5},
        {'text': 'Maria', 'score': 3},
        {'text': 'Paco', 'score': 10}
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    void _answerQuestion(int score) {
      _totalScore += score;
      setState(() {
        _questionIndex = _questionIndex + 1;

        /// Fix the array exception when you click more times than there are options
        // if (_questionIndex >= questions.length) {
        //   _questionIndex = 0;
        // }
      });
    }

    void _resetQuiz() {
      setState(() {
        _questionIndex = 0;
        _totalScore = 0;
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
