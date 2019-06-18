import 'package:bmi_calculator/components//reusable_card.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
//const reusableCardColor = 0xFF1D1E33;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

Gender cardType = Gender.male;

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  /*Color maleCardColor = inactiveCardColor;*/
  /*Color femaleCardColor = inactiveCardColor;*/

  /*void updateColor(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
        femaleCardColor = activeCardColor;
      }
    }
    if (selectedGender == Gender.female) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
        maleCardColor = activeCardColor;
      }
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        cardType = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      colour: cardType == Gender.male
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: IconContent(
                        cardIcon: FontAwesomeIcons.mars,
                        cardText: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        cardType = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      colour: cardType == Gender.female
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: IconContent(
                        cardIcon: FontAwesomeIcons.venus,
                        cardText: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: bottomContainerColor,
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
