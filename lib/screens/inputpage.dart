import 'package:flutter/painting.dart';
import 'package:flutterintermediate/screens/results_page.dart';

import '../components/reusable_card.dart';
import '../components/icon_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';
import '../components/bottom_button.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactivatedCardColor;
  Color femaleCardColor = inactivatedCardColor;
  Gender? gender;

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
                      gender = Gender.male;
                    }),
                    child: ReusableCard(
                        colour: gender == Gender.male
                            ? activatedCardColor
                            : inactivatedCardColor,
                        cardChild: IconContent(
                            icon: FontAwesomeIcons.mars, label: 'MALE')),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() {
                      gender = Gender.female;
                    }),
                    child: ReusableCard(
                        colour: gender == Gender.female
                            ? activatedCardColor
                            : inactivatedCardColor,
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
          BottomButton(
            buttonText: 'CALCULATE',
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultPage()));
            },
          )
        ],
      ),
    );
  }
}
