import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answertext;
  final Function selectHandler;

  Answer(this.answertext, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answertext),
        onPressed: selectHandler,
      ),
    );
  }
}
