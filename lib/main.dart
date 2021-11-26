import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // void answerQuestion() {
    //   print('answer choosen');
    // }

    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What\'s your dream?',
      'What\'s her name?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // backgroundColor: color: Colors.black,
          title: const Center(child: Text('The title of my app')),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            // margin: EgdeInsets.all(10),
            // Text('the question'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () => print('Answer 2 chosen'),
            ),
            RaisedButton(
                child: Text('Answer 1'),
                onPressed: () {
                  print('Answer 3 chosen');
                })
          ],
        ),
      ),
    );
  }
}
