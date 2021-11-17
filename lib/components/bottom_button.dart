import 'package:flutter/material.dart';
import 'package:flutterintermediate/screens/results_page.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {


  BottomButton({required this.buttonText});
  final String buttonText;
 // final Function onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage()));
      },
      child: Container(
        child: Center(
          child: Text(
            buttonText,style: largeButtonText,
          ),
        ),
        color: bottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: bottomContainerHeight,
      ),
    );
  }
}
