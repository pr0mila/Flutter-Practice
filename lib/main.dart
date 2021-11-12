import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'quix_brain.dart';

QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: MyHomePage(),
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {


  void checkAnswer(bool userPickedAnswer)
  {

    bool correctAnswer = quizBrain.getAnswer();
    if (correctAnswer == true)
        quizBrain.scoreKeeper.add(
        Icon(
          Icons.check,
          color: Colors.green,
        ),
      );
    else
      quizBrain.scoreKeeper.add(
        Icon(
          Icons.close,
          color: Colors.red,
        ),
      );
    setState(() {
      quizBrain.nextQuestion();
      print(quizBrain.nextQuestion);

    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestion(),
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(10.0),
          child: FlatButton(
            //textColor: Colors.white,
            color: Colors.green,
            child: Text(
              'True',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            onPressed: () {
              checkAnswer(true);

            },
          ),
        )),
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(10.0),
          child: FlatButton(
            //textColor: Colors.white,
            color: Colors.red,
            child: Text(
              'False',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            onPressed: () {
              checkAnswer(false);
            },
          ),
        )),
        Expanded(
          flex: 1,
      child:Row(
          children: quizBrain.scoreKeeper,
        ))
      ],
    );
  }
}
