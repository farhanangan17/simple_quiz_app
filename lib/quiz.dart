import 'package:flutter/material.dart';
import './ques.dart';
import './ans.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> integratedList;
  final int quesInd;
  final Function nextQues;

  Quiz({
    @required this.integratedList,
    @required this.quesInd,
    @required this.nextQues,
  });

  @override
  Widget build(BuildContext context) {
    return Column (
        children: [
          //showing questions
          Question(integratedList[quesInd]['quesText']),
          //showing ans options
          ...(integratedList[quesInd]['ans'] as List<Map<String, Object>>).map((answer) {
              return Answer(() => nextQues(answer['score']), answer['text']);
              // return Answer(nextQues(answer['text']);
          }).toList(),
        ]
    );
  }
}
