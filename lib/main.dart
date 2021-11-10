import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  var _questionIndex = 0;
  void answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What\'s the capital city of Ethiopia?',
      'The three primary colors prespectively are'
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('መልመጃ ደብተር')),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            ElevatedButton(child: Text('Answer 1'), onPressed: answerQuestion),
            ElevatedButton(
                child: Text('Answer 3'),
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
