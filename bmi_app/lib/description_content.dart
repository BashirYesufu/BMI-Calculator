import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';

class DescriptionContent extends StatelessWidget {
  const DescriptionContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('WEIGHT', style: labelTextStyle,),
        Text('87', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60.0),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.grey,
              padding: EdgeInsets.all(10.0),
              child: Icon(FontAwesomeIcons.minus),
            ),
            SizedBox(width: 30.0,),
            Container(
              color: Colors.grey,
              padding: EdgeInsets.all(10.0),
              child: Icon(FontAwesomeIcons.plus),
            ),
          ],
        ),

      ],
    );
  }
}