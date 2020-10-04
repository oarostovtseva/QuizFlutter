import 'package:flutter/material.dart';
import 'questionWidget.dart';
import 'answerWidget.dart';
import 'package:flutter_complete_guide/model/data.dart';

class Quiz extends StatelessWidget {
  final Function selectHandler;
  final int questionNumber;

  Quiz(this.questionNumber, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionsData[questionNumber]['questionText']),
        ...(questionsData[questionNumber]['answers']
                as List<Map<String, Object>>)
            .map((answer) =>
                Answer(answer['text'], () => selectHandler(answer['score'])))
            .toList()
      ],
    );
  }
}
