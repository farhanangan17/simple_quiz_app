import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String quesText;

  Question(this.quesText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // padding: EdgeInsets.only(top: 200),
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
      child: Text(quesText,
        style: TextStyle(
          fontSize: 30,
        ),
        textAlign: TextAlign.center,
      ),
    );

  }
}

