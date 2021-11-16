import 'package:flutter/material.dart';
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
                  child: ReusableCard(colour:activatedCardColor),
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

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour});
  final Color colour;
  //final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
