// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
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
      'what is your favorite color?',
      'Favorite pet?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('PROJECT ALPHA'),
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex],
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Cyan Blue'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Crimson Red'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Apple Green'),
            ),
          ],
        ),
      ),
    );
  }
}
