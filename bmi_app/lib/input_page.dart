import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

class IconContent extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconContent({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(height: 15.0,),
        Text(
          text,
          style: TextStyle(
            color: Color(0xFF8D8E98),
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {

  final Color colour;
  final Widget? cardChild;
  const ReusableCard({Key? key, required this.colour, this.cardChild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

