import 'package:flutter/material.dart';

class AlertBox extends StatelessWidget {
  final List<String> AnswerOption;
  final int correctOption;
  int questionIndex;
  AlertBox(
      {required this.AnswerOption,
      required this.correctOption,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AlertDialog(
        title: const Text('answerDisplay dialog'),
        backgroundColor: Colors.lightBlue,
        content: Text(
          'This is  the  answer: ${AnswerOption[correctOption]}',
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              questionIndex = questionIndex + 1;
              print(questionIndex);
              Navigator.of(context).pop();
            },
            child: const Text('Next'),
          )
        ],
      ),
    );
  }
}
