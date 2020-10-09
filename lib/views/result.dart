import 'package:flutter/material.dart';

// Blueprint for results widget.
class Result extends StatelessWidget {
  // Result of how user did in quiz.
  final resultScore;
  // Method for handling reseting the quiz state.
  final Function resetHandler;

  Result({this.resultScore, this.resetHandler});

  // Get a phrase based on the result on how the user did.
  String get resultPhrase {
    // Text for phrase.
    String resultText;

    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likable!';
    } else if (resultScore <= 16) {
      resultText = 'You are... strange?!';
    } else {
      resultText = 'You are so bad!';
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
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            textColor: Colors.blue,
            onPressed: resetHandler,
            child: Text(
              'Restart Quiz',
            ),
          )
        ],
      ),
    );
  }
}
