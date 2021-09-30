import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buidKey(Color color, int soundNumber, String text) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buidKey(Colors.red, 1, 'Music 1'),
              buidKey(Colors.orange, 2, 'Music 2'),
              buidKey(Colors.yellow, 3, 'Music 3'),
              buidKey(Colors.green, 4, 'Music 4'),
              buidKey(Colors.teal, 5, 'Music 5'),
              buidKey(Colors.blue, 6, 'Music 6'),
              buidKey(Colors.purple, 7, 'Music 7'),
            ],
          ),
        ),
      ),
    );
  }
}
