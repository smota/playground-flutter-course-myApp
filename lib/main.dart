import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  static const _questions = const [
    {
      'questionText': 'What\'s your favorite color',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Lion', 'Rabbit', 'Snake', 'Elephant'],
    },
    {
      'questionText': 'Who is your favorite instructor?',
      'answers': ['Sam', 'Sam', 'Sam', 'Sam'],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex < _questions.length - 1
          ? _questionIndex + 1
          : _questionIndex;
    });
    print("Answer selected");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('myApp'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questionList: _questions, 
                answerQuestion: _answerQuestion, 
                questionIndex: _questionIndex)
            : Result(),
      ),
    );
  }
}
