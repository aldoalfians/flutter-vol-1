import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(2),
      child: RaisedButton(
        color: Colors.deepPurpleAccent,
        child: Text(
          answerText,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
