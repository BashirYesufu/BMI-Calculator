import 'package:bmi_app/constants.dart';
import 'package:bmi_app/reusable_card.dart';
import 'package:flutter/material.dart';

import 'bottom_button.dart';

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
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
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

          BottomButton(buttonTitle: 'see', onTap: () {},),

        ],
      ),
    );
  }
}
