import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetHandler;
  Result({required this.score, required this.resetHandler});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 100,
        ),
        Text(
          'Quiz completed',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(137, 44, 44, 44)),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'score: $score',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 40,
        ),
        TextButton(
          onPressed: resetHandler,
          child: Text('Restart Quiz'),
        ),
      ],
    );
  }
}
