import 'package:flutter/material.dart';
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
    'What\'s your favorite color',
    'What\'s your favorite animal?',
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
            Question(_questions[_questionIndex]),
            RaisedButton(
              child: Text('Option 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Option 2'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Option 3'),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
