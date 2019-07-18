import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
    print(questionIndex);
  }

  var questions = ["What's your name?", "What's your age"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter Starter")),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(questions[questionIndex]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  child: Text("Answer 1"),
                  onPressed: answerQuestion,
                ),
                RaisedButton(
                  child: Text("Answer 2"),
                  onPressed: answerQuestion,
                ),
                RaisedButton(
                  child: Text("Answer 2"),
                  onPressed: answerQuestion,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
