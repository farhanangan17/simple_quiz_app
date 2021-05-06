import 'package:flutter/material.dart';
//dont need as quiz and result are imported
// import './ques.dart';
// import './ans.dart';
import './quiz.dart';
import './result.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends  StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    WidgetsApp.debugAllowBannerOverride = false;
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp>{
  // var listAns = ['White', 'Orange', 'Baseball'];
  // var listAnsOne = ['Red', 'Apple', 'Cricket'];
  // var listAnsTwo = ['Yellow', 'Banana', 'Football'];
  // var listQues = ['Fav color?', 'fav teacher?', 'fav subject?'];
  // Integrating above two lists into one map
  final _integratedList = const [
    {'quesText': 'Capital of Bangladesh?',
    'ans' : [
      {'text': 'Chattogram', 'score':0},
      {'text': 'Dhaka', 'score':1},
      {'text': 'Jessore', 'score':0}],
    },
    {'quesText': 'National Game of Bangladesh?',
      'ans' : [
        {'text': 'Cricket', 'score':0},
        {'text': 'football', 'score':0},
        {'text': 'Ha-du-du', 'score':1}],
    },
    {'quesText': 'National Fruit of Bangladesh?',
    'ans' : [
      {'text': 'Jack-fruit', 'score':1},
      {'text': 'Mango', 'score':0},
      {'text': 'Coconut', 'score':0}],
    },
    {'quesText': 'National Animal of Bangladesh?',
      'ans' : [
        {'text': 'Deer', 'score':0},
        {'text': 'Crocodile', 'score':0},
        {'text': 'Royal Bengal', 'score':1}],
    },
    {'quesText': 'Liberation Year of Bangladesh?',
      'ans' : [
        {'text': '1970', 'score':0},
        {'text': '1971', 'score':1},
        {'text': '1972', 'score':0}],
    },
  ];

  var _quesInd = 0;
  var _totalScore = 0;
  // void _nextQues(int score){
  void _nextQues(int score){
    _totalScore += score;
    setState(() {
      // if (quesInd < integratedList.length-1){  //this if cond shifted to body::
        _quesInd++;
      // }
    });
    print(_quesInd);
  }

  void _resetQuiz(){
    setState(() {
      _quesInd = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Quiz on Bangladesh'),
        ),
        body: _quesInd <= _integratedList.length-1
            ? Quiz(
                integratedList: _integratedList,
                quesInd: _quesInd,
                nextQues: _nextQues,
              )
            : Result(_totalScore, _resetQuiz),
            // Result(_totalScore),
      ),
    );
  }
}

// Answer(nextQues, listAns[quesInd]),
// Answer(nextQues, listAnsOne[quesInd]),
// Answer(nextQues, listAnsTwo[quesInd]),
// Text(listQues[quesInd]),
// RaisedButton(
//   child: Text(listAns[0]),
//   onPressed: (){
//     quesanwrd();
//     print(listAns[0] + ' pressed');
//   },
// ),
// RaisedButton(
//   child: Text(listAns[1]),
//   onPressed: (){
//     quesanwrd();
//     print(listAns[1] + ' pressed');
//     },
//   // (){
//   //   print(listOne[1] + ' pressed');
//   // },
// ),
// RaisedButton(
//   child: Text(listAns[2]),
//   onPressed: (){
//     quesanwrd();
//     print(listAns[2] + ' pressed');
//   },
// ),