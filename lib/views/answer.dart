import 'package:flutter/material.dart';

// Blueprint for Answers widget.
class Answer extends StatelessWidget {
  // Method to handle selected answer.
  final Function selectHandler;
  // Text of answer.
  final String answerText;
  // Horizontal margins for Container.
  static const hMargin = 64.0;
  // Vertical margins for Container.
  static const vMargin = 4.0;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: hMargin,
        vertical: vMargin,
      ),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
