import 'reusable_card.dart';
import 'icon_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const backgroundCardColor = Color(0xFF0A0E21);
const activatedCardColor = Color(0xFF1D1E33);
const inactivatedCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactivatedCardColor;
  Color femaleCardColor = inactivatedCardColor;

  void updatedColor(int gender) {
    if (gender == 1) {
      maleCardColor = activatedCardColor;
      femaleCardColor = inactivatedCardColor;
    } else {
      maleCardColor = inactivatedCardColor;
    }
    if (gender == 2) {
      femaleCardColor = activatedCardColor;
      maleCardColor = inactivatedCardColor;
    } else {
      femaleCardColor = inactivatedCardColor;
    }
  }

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
                  child: GestureDetector(
                    onTap: () => setState(() {
                      updatedColor(1);
                    }),
                    child: ReusableCard(
                        colour: maleCardColor,
                        cardChild: IconContent(
                            icon: FontAwesomeIcons.mars, label: 'MALE')),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() {
                      updatedColor(2);
                    }),
                    child: ReusableCard(
                        colour: femaleCardColor,
                        cardChild: IconContent(
                            icon: FontAwesomeIcons.venus, label: 'FEMALE')),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: activatedCardColor),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: activatedCardColor),
                ),
                Expanded(
                  child: ReusableCard(colour: activatedCardColor),
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
