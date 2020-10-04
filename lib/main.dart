import 'package:flutter/material.dart';
import 'ui/quizWidget.dart';
import 'ui/resultWidget.dart';
import 'model/data.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionNumber = 0;
  var _totalScore = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Quiz app')),
        body: (_isMoreQuestions())
            ? Quiz(_questionNumber, _answerChoosen)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }

  void _answerChoosen(int score) {
    _totalScore += score;
    if (_isMoreQuestions()) {
      setState(() {
        _questionNumber = _questionNumber + 1;
      });
    }
  }

  bool _isMoreQuestions() => _questionNumber < questionsData.length;

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionNumber = 0;
    });
  }
}
