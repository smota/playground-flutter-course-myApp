import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

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

  var _questions = [
    { 'questionText' : 'What\'s your favorite color',
      'answers' : ['Black', 'Red', 'Green', 'White'],
    },
    { 'questionText' : 'What\'s your favorite animal?', 
      'answers' : ['Lion', 'Rabbit', 'Snake', 'Elephant'],
    },
    { 'questionText' : 'Who is your favorite instructor?',
      'answers' : ['Sam', 'Sam', 'Sam', 'Sam'],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex =
          _questionIndex < _questions.length - 1 ? _questionIndex + 1 : 0;
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
        body: Column(
          children: <Widget>[
            Question(_questions[_questionIndex]['questionText']),
            ...(_questions[_questionIndex]['answers'] as List<String>).map((answer){
              return Answer(_answerQuestion, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}