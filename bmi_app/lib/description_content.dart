import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';

class DescriptionContent extends StatelessWidget {

  final String text;
  final String number;
  final Decoration? decor = ShapeDecoration(shape: CircleBorder(), color: Colors.grey,);

  DescriptionContent({Key? key, required this.text, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: labelTextStyle,),
        Text(number, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60.0),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: decor,
              padding: EdgeInsets.all(10.0),
              child: Icon(FontAwesomeIcons.minus),
            ),
            SizedBox(width: 30.0,),
            Container(
              decoration: ShapeDecoration(
                shape: CircleBorder(),
                color: Colors.grey,
              ),
              padding: EdgeInsets.all(10.0),
              child: Icon(FontAwesomeIcons.plus),
            ),
          ],
        ),

      ],
    );
  }
}