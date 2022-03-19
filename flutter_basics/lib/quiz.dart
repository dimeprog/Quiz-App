import 'package:flutter/material.dart';
import './answers.dart';
import './questions.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final int questionIndex;
  final void Function() answerQuestion;
  Quiz({
    required this.answerQuestion,
    required this.questions,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Questions(
          questions[questionIndex]['question'] as String,
        ),
        ...(questions[questionIndex]['content'] as List<String>).map(
          (ans) => Answer(selectHandler: answerQuestion, ButtonText: ans),
        ),
      ],
    );
  }
}
