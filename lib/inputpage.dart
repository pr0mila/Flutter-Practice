import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const backgroundCardColor = Color(0xFF0A0E21);
const activatedCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundCardColor,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                      colour:activatedCardColor,
                      cardChild: IconContent(fontAwesomeIcon.mars)

                  ),
                ),
                Expanded(
                  child: ReusableCard(colour:activatedCardColor),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour:activatedCardColor),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour:activatedCardColor),
                ),
                Expanded(
                  child: ReusableCard(colour:activatedCardColor),
                ),
              ],
            ),

          ),
          Container(
                color: bottomContainerColor,
                width: double.infinity,
                height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}

class IconContent extends StatelessWidget {

  IconContent({required this.icon, required this.label})
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget> [
        Icon(
          icon,
          size: 100.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          label, style: TextStyle(
          fontSize: 18.0, color: Color(0xFF8D8E98)
        ),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, this.cardChild});

  final Widget? cardChild;
  final Color colour;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: cardChild,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
