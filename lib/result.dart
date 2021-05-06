import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    var resultText;
    var finalResult;
    // var resultStatus;
    if (resultScore < 3) {
      resultText = 'Score: ';
      String stringScore = resultScore.toString();
      // resultStatus = 'Poor';
      finalResult = resultText + stringScore;
    }
    else if (resultScore < 5) {
      resultText = 'Score: ';
      String stringScore = resultScore.toString();
      // resultStatus = 'Good';
      finalResult = resultText + stringScore;
    }
    else{
      resultText = 'Score: ';
      String stringScore = resultScore.toString();
      // resultStatus = 'Excellent';
      finalResult = resultText + stringScore;
    }
    return finalResult;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(resultPhrase,
          // Text('Score: '+resultScore,
            style: TextStyle(fontSize: 20.0,),
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: resetQuiz, child: Text('Reset'))
        ]
      )
    );
  }
}
