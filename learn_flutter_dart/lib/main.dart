import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    void answerQuestion() {
      questionIndex = questionIndex + 1;
      print('Question Index: ' + questionIndex.toString());
    }

    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourtie animal?'
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: <Widget>[
              Text(questions.elementAt(questionIndex)),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: () => print('Answer 2 chosen!'),
              ),
              RaisedButton(
                  child: Text('Answer 3'),
                  onPressed: () {
                    print('Answer 3 chosen!');
                  }),
            ],
          )),
    );
  }
}
