import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.blue,
      ),
      child: Text(
        questionText,
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 255, 255, 255)),
        textAlign: TextAlign.center,
      ),
    );
  }
}
