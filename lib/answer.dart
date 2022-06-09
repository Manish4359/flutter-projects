import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handler;
  String answerText;

  Answer(this.handler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: double.infinity,
      child: ElevatedButton(
        child: Text(
          answerText,
          // style: TextStyle(color: Color.fromARGB(255, 255, 224, 224)),
        ),
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 255, 70, 70),
          fixedSize: Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),

        // color: Colors.yellow,
        onPressed: () {
          handler();
        },
      ),
    );
  }
}
