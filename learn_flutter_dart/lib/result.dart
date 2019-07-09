import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetQuizHandler;

  Result(this.score, this.resetQuizHandler);

  String get resultPhrase {
    var resultText;

    if (score < 10) {
      resultText = 'You are innocent!';
    } else if (score < 20) {
      resultText = 'You are strange..!';
    } else {
      resultText = 'You are awesome..!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            textColor: Colors.green,
            onPressed: resetQuizHandler,
          )
        ],
      ),
    );
  }
}
