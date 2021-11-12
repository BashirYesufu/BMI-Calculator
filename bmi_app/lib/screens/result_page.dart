import 'package:bmi_app/constants.dart';
import 'package:bmi_app/components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment:  Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),

          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              onPress: () {},
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Normal',
                    style: kResultTextStyle,
                  ),

                  Text(
                    '18.3',
                    style: kBMITextStyle,
                  ),

                  Text(
                    'Your BMI result is quite low. You should eat more',
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),

                ],
              ),
            ),
          ),

          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),

        ],
      ),
    );
  }
}