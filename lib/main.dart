import 'package:flutter/material.dart';
import 'question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionsIndex = 0;
  var questions = [
    'What\'s your favorite color ? ',
    'What\'s your favorite animal ?'
  ];
  void answerQuestion() {
    setState(() {
      questionsIndex = questionsIndex + 1;
    });

    print(questionsIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("MY App"),
            ),
            body: Column(
              children: [
                Question(questions[questionsIndex]),
                RaisedButton(
                    child: Text("Answer No 1"), onPressed: answerQuestion),
                RaisedButton(
                    child: Text("Answer No 2"),
                    onPressed: () => print("Answer 2 Chosen")),
                RaisedButton(
                    child: Text("Answer No 3"),
                    onPressed: () {
                      print("Answer 3 Chosen");
                    }),
              ],
            )));
  }
}
