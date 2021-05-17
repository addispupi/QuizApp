import 'package:flutter/material.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QuizAppState();
  }
}

class QuizAppState extends State<QuizApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('መልመጃ ደብተር')),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(child: Text('Answer 1'), onPressed: answerQuestion),
            ElevatedButton(
                child: Text('Answer 2'),
                onPressed: () => print('answer 2 choosen')),
            ElevatedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  print('Answer 3 chooen');
                }),
          ],
        ),
      ),
    );
  }
}
