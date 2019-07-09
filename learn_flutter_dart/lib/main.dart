import 'package:flutter/material.dart';

import './quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'White', 'score': 10},
        {'text': 'Read', 'score': 7},
        {'text': 'Greann', 'score': 5},
        {'text': 'Purple', 'score': 2}
      ],
    },
    {
      'questionText': 'What\'s your favourtie animal?',
      'answers': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Eliphant', 'score': 5},
        {'text': 'Rabbit', 'score': 4},
        {'text': 'Cow', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favourtie subject?',
      'answers': [
        {'text': 'Maths', 'score': 10},
        {'text': 'Science', 'score': 8},
        {'text': 'Physics', 'score': 7},
        {'text': 'Chemistry', 'score': 5}
      ],
    },
  ];

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      _totalScore += score;
    });
    print('Question Index: ' + _questionIndex.toString());
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
