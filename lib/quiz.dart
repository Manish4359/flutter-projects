import 'package:flutter/material.dart';
import './answer.dart';

import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;

  final Function questionHandler;
  //if Function causes error, use voidcallback

  Quiz(
      {required this.questions,
      required this.questionIndex,
      required this.questionHandler});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'].toString(),
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map(
              (answer) => Answer(
                () => questionHandler(
                  int.parse(
                    answer['score'].toString(),
                  ),
                ),
                answer['text'].toString(),
              ),
            )
            .toList()
      ],
    );
  }
}
