import 'package:flutter/material.dart';

//import file dart
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

// Using Arrow function
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Purple', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 5},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Lion', 'score': 1},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 10},
        {'text': 'Max', 'score': 5},
        {'text': 'Max', 'score': 3},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];

  // example
  // var dummy = const ["Hello"];
  // dummy.add("World"); // method add to add element to list
  // dummy.add("World"); // error because list const "cannot add to an unmodifiable list"
  // question = []; // does not work because question is a constant
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 2;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions');
    }
    // print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Wet Apps'),
            backgroundColor: (Colors.deepPurpleAccent),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions)
              : Result(_totalScore, _resetQuiz)),
    );
  }
}

// Before using widget answer
// import 'package:flutter/material.dart';

// //import file dart
// import './question.dart';
// // void main() {
// //   runApp(MyApp());
// // }

// // Using Arrow function
// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   var _questionIndex = 0;

//   void _answerQuestion() {
//     setState(() {
//       _questionIndex = _questionIndex + 1;
//     });
//     print(_questionIndex);
//     // print('Answer chosen!');
//   }

//   @override
//   Widget build(BuildContext context) {
//     var questions = [
//       'What\'s your favorite color?',
//       'What\'s your favorite animal?',
//       'What\'s your favorite car?',
//     ];
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Wet Apps'),
//           backgroundColor: (Colors.deepPurpleAccent),
//         ),
//         body: Column(
//           children: [
//             Question(questions[_questionIndex]),
//             RaisedButton(
//               color: Colors.deepPurpleAccent,
//               child: Text(
//                 'Answer 1',
//                 style: TextStyle(color: Colors.white),
//               ),
//               onPressed: _answerQuestion,
//             ),
//             RaisedButton(
//               color: Colors.deepPurpleAccent,
//               child: Text(
//                 'Answer 2',
//                 style: TextStyle(color: Colors.white),
//               ),
//               onPressed: () => print('Answer 2 chosen!'), // Anonymous function,
//             ),
//             RaisedButton(
//               color: Colors.deepPurpleAccent,
//               child: Text(
//                 'Answer 3',
//                 style: TextStyle(color: Colors.white),
//               ),
//               onPressed: () {
//                 _answerQuestion(); // Anonymouse function
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
