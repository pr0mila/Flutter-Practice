import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'questions.dart';

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

List<Icon> scoreKeeper = [];

int questionNumber = 0;
List <Questions> questionbank = [
  Questions(q : 'Variables represent the type of data', a : false),
  Questions(q : 'Boolean returns ture or false', a : true),
  Questions(q : 'Dart supports null safety', a : true)
] ;

class _MyHomePageState extends State<MyHomePage> {
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
                questionbank[questionNumber].questionText,
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
              bool correctAnswer = questionbank[questionNumber].questionAnswer;
              if (correctAnswer == true)
                print("this is right");
              else
                print("this is wrong");
              setState(() {
                questionNumber++;

                scoreKeeper.add(
                  Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                );
              });
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
              bool correctAnswer = questionbank[questionNumber].questionAnswer;
              if (correctAnswer == false)
                print("this is right");
              else
                print("this is wrong");
              setState(() {
                questionNumber++;
                scoreKeeper.add(
                  Icon(
                    Icons.close,
                    color: Colors.red,
                  ),
                );
              });
            },
          ),
        )),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
