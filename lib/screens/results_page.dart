import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutterintermediate/components/reusable_card.dart';
import '../constants.dart';
import '../components/bottom_button.dart';
import 'inputpage.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interprestation});

  final String? bmiResult;
  final String? resultText;
  final String? interprestation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
                  child: Text(
            'Your result',
            style: titleText,
          ))),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colour: activatedCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(resultText!.toUpperCase(), style: resText),
                    Text(bmiResult!, style: bmiText),
                    Text(interprestation!,
                        textAlign: TextAlign.center, style: bodyText)
                  ],
                ),
              )),
          BottomButton(
            buttonText: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
