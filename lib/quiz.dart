import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  
  final List<Map<String, Object>> questionList;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({ 
        @required this.questionList, 
        @required this.answerQuestion, 
        @required this.questionIndex });

  @override
  Widget build(BuildContext context) {
    return Column(
                children: <Widget>[
                  Question(questionList[questionIndex]['questionText']),
                  ...(questionList[questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(answerQuestion, answer);
                  }).toList(),
                ],
      );
  }
}