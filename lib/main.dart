import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter Starter")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Text in column"),
            Text("New text element"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  child: Text("Row Button A"),
                  onPressed: null,
                ),
                RaisedButton(
                  child: Text("Row Button B"),
                  onPressed: null,
                ),
              ],
            ),
            RaisedButton(
              child: Text("A Button "),
              onPressed: null,
            )
          ],
        ),
      ),
    );
  }
}
