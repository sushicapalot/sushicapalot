import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 70.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomCardColor = Color(0xFFEA114C);
const inactiveCardColor = Color(0xFF111328);

class Input extends StatefulWidget {
  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void colorChanger(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    } else {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      colorChanger(1);
                    });
                  },
                  child: ReusableCard(
                    colour: maleCardColor,
                    cardChild: IconContent(
                      myGender: 'MALE',
                      myIcon: FontAwesomeIcons.mars,
                    ),
                  ),
                )),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        colorChanger(2);
                      });
                    },
                    child: ReusableCard(
                        colour: femaleCardColor,
                        cardChild: IconContent(
                          myGender: 'FEMALE',
                          myIcon: FontAwesomeIcons.venus,
                        )),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: activeCardColor),
          ),
          Expanded(
            child: Row(
              children: [
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
            //width: double.infinity,
            color: bottomCardColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
