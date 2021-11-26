import 'package:flutter/material.dart';
import 'package:flutterintermediate/screens/results_page.dart';
import '../constants.dart';


class BottomButton extends StatelessWidget {


  BottomButton({required this.buttonText,required this.onTap});
  final String buttonText;
  final VoidCallback onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap
      ,
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

