import 'package:flutter/material.dart';

import './main.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result({@required this.resultScore, @required this.resetQuiz});

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            onPressed: resetQuiz,
            child: Text('Restart Quiz!'),
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
