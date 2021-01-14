import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  Result(this.totalScore);

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
      child: Text(resultPhase),
    );
  }
}
