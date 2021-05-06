import'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function nextQues;
  final String listAns;

  Answer(this.nextQues, this.listAns);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      // width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        hoverColor: Colors.white,
        child: Text(listAns),
        onPressed: nextQues,
      ),
    );
  }
}
