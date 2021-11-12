import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {

  final IconData child;
  final Function() onPressed;
  const RoundIconButton({Key? key, required this.child, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: Color(0xFF4C4F5E),
      elevation: 6.0,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(child),
    );
  }
}
