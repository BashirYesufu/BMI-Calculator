import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
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
                  ReusableCard(colour: Color(0xFF1D1E33),),
                  ReusableCard(colour: Color(0xFF1D1E33),),
                ],
              ),
          ),

          ReusableCard(colour: Color(0xFF1D1E33),),

          Expanded(
            child: Row(
              children: [
                ReusableCard(colour: Color(0xFF1D1E33),),
                ReusableCard(colour: Color(0xFF1D1E33),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {

  final Color colour;
  const ReusableCard({Key? key, required this.colour}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

