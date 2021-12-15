import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText; // final means that it can't be changed

  Question(this.questionText); // constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Full width
      margin: EdgeInsets.all(10), // Margin 10 all around
      child: Text(
        questionText,
        style: TextStyle(
            fontSize: 24, color: Colors.deepPurpleAccent, fontFamily: 'Serif'),
        textAlign: TextAlign.center,
      ),
    );
  }
}
