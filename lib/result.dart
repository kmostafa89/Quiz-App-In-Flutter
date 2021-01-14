import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function onPressed;

  Result(this.totalScore, this.onPressed);

  String get resultPhase {
    String resultText;
    if (totalScore <= 8) {
      resultText = 'Well done, you are innocent';
    } else if (totalScore <= 12) {
      resultText = 'You are pretty decent!';
    } else if (totalScore <= 16) {
      resultText = 'You are somethign else dude!';
    } else {
      resultText = 'You finished! and you scored $totalScore';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(resultPhase),
          FlatButton(
              onPressed: onPressed,
              child: Text(
                'Restart Quiz',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ))
        ],
      ),
    );
  }
}
