// ignore_for_file: deprecated_member_use, prefer_const_constructors, sort_child_properties_last, unused_local_variable, avoid_print, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];

  int _questionIndex = 0;
  int _score = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }

  void _answerQuestion(int answerScore) {
    if (_questionIndex >= _questions.length) {
      print('_score $_score');
      return;
    }
    setState(() {
      _questionIndex++;
    });
    _score += answerScore;

    print('${_questionIndex - 1} $answerScore   $_score');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Quiz',
            style: TextStyle(letterSpacing: 10),
          ),
          backgroundColor: Color.fromARGB(255, 62, 62, 62),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          color: Color.fromARGB(255, 245, 245, 245),
          width: double.infinity,
          child: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  questionHandler: _answerQuestion,
                )
              : Result(
                  score: _score,
                  resetHandler: _resetQuiz,
                ),
        ),
      ),
    );
  }
}
