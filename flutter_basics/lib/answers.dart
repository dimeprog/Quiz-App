// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function() selectHandler;
  final String ButtonText;
  Answer({required this.selectHandler, required this.ButtonText});
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          ButtonText,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        onPressed: selectHandler,
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
