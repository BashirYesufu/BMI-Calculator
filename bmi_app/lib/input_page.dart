import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
                children: [
                  ReusableCard(
                    colour: activeCardColor,
                    cardChild: IconContent(icon: FontAwesomeIcons.mars, text: 'MALE',),
                  ),
                  ReusableCard(
                    colour: activeCardColor,
                    cardChild: IconContent(icon: FontAwesomeIcons.venus, text: 'FEMALE',),
                  ),
                ],
              ),
          ),

          ReusableCard(
            colour: activeCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HEIGHT',
                  style: TextStyle(color: Color(0xFF8D8E98), fontSize: 18.0,),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('150', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),),
                    Text('cm')
                  ],
                ),

              ],
            ),
          ),

          Expanded(
            child: Row(
              children: [
                ReusableCard(
                  colour: activeCardColor,

                ),
                ReusableCard(
                  colour: activeCardColor,
                ),
              ],
            ),
          ),

          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}