import 'package:bmi_app/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class DescriptionContent extends StatelessWidget {

  final String text;
  final String number;
  final Function() minusAction;
  final Function() plusAction;
  final Decoration? decor = ShapeDecoration(shape: CircleBorder(), color: Colors.grey,);

  DescriptionContent({Key? key,
    required this.text,
    required this.number,
    required this.minusAction,
    required this.plusAction, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: kLabelTextStyle,),
        Text(number, style: kBoldTextStyle,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            RoundIconButton(
              child: FontAwesomeIcons.minus,
              onPressed: minusAction,
            ),

            SizedBox(width: 30.0,),

            RoundIconButton(
              child: FontAwesomeIcons.plus,
              onPressed: plusAction,
            ),

          ],
        ), 
      ],
    );
  }
}

