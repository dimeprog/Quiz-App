// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final void Function() reset;
  Result(this.resultScore, this.reset);
  get resultPhase {
    var resultText;
    if (resultScore <= 10) {
      resultText = 'You are Awesome';
    } else if (resultScore <= 14) {
      resultText = 'You are fairly good';
    } else if (resultScore <= 18) {
      resultText = 'You are manageable';
    } else {
      resultText = 'You are bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          FlatButton(
            child: const Text(
              'Restart Quiz!',
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            textColor: Colors.blue,
            onPressed: reset,
          ),
        ],
      ),
    );
  }
}
