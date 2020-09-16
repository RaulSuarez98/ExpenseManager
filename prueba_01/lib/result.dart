import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText = 'You did it';
    if (resultScore <= 8) {
      resultText = 'Awesome';
    } else if (resultScore <= 12) {
      resultText = 'mah';
    } else if (resultScore <= 16) {
      resultText = 'Strange';
    } else {
      resultText = 'Bad';
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
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: resetHandler,
          child: Text('Restart Quiz!'),
          textColor: Colors.amberAccent,
        )
      ],
    ));
  }
}
