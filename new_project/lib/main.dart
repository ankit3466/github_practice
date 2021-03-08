import 'package:flutter/material.dart';
import 'package:new_project/answer.dart';
import 'package:new_project/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s is your favorite color?',
        'answer': ['Red', 'Green', 'Blue', 'Yellow']
      },
      {
        'questioText': 'what\'s is your favorite animal?',
        'answer': ['Rabbit', 'Snack', 'Lion', 'Peacock']
      },
      {
        'questionText': 'How is your favorite Instructor?',
        'answer': ['Mr. white', 'Mr. JoJo', 'Ms Julia', 'Ms Reena']
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Question(questions[_questionIndex]['questionText']),
              ...(questions[_questionIndex]['answer'] as List<String>)
                  .map((answer) {
                return Answer(answer, _answerQuestion);
              }).toList()
            ],
          ),
        ),
      ),
    );
  }
}
