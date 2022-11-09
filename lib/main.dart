import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:myappflutter2/main.dart';
import './question.dart';
import './answer.dart';

// Uncomment lines 3 and 6 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

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
      _questionIndex++;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var questions = [
      'What is your favorite color?',
      'What is your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
          appBar:
              AppBar(title: Text('My app'), backgroundColor: Colors.red[300]),
          body: Column(
            children: [
              //Question(questions[_questionIndex]),
              Text(questions[_questionIndex],
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 28,
                  )),

              ElevatedButton(
                   onPressed: _answerQuestion, child: Text('Answer 1')),
               ElevatedButton(
                   onPressed: _answerQuestion, child: Text('Answer 2')),
               ElevatedButton(
                   onPressed: _answerQuestion, child: Text('Answer 3')),
              //Answer(_answerQuestion),
              //Answer(_answerQuestion),
              //Answer(_answerQuestion),
            ],
          )),
    );
  }
}
