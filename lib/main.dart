import 'package:flutter/material.dart';

void main() => runApp(MyQuiz());

class MyQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Intelligence Questions'),
        ),
        body: Text('This is my default text!'),
      ),
    );
  }
}
