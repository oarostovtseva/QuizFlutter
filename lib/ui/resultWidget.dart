import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function selectHandler;
  final int totalScore;

  Result(this.totalScore, this.selectHandler);

  String get resultText {
    var text = 'Congrats!\nYour score is: $totalScore';
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Text(
          resultText,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        )),
        FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text('Reset'),
            onPressed: selectHandler),
      ],
    );
  }
}
