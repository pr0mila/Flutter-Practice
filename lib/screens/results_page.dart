import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutterintermediate/components/reusable_card.dart';
import '../constants.dart';
import '../components/bottom_button.dart';
import 'inputpage.dart';

class ResultPage extends StatelessWidget {


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
        children:<Widget> [
          Expanded(child: Container(child: Text('Your result',style: titleText,))),
          Expanded(flex:5,child: ReusableCard(
              colour:activatedCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:<Widget> [
                  Text('Normal',style: resultText,),
                  Text('18.3',style:bmiText),Text('Your BMI result is quite low.You should eat more.',
                      textAlign: TextAlign.center,
                      style:bodyText)
                ],
              ),
          )),
          BottomButton(buttonText: 'RE-CALCULATE',onTap: (){
            Navigator.pop(context);
          },)
        ],

      ),
    );
  }
}
