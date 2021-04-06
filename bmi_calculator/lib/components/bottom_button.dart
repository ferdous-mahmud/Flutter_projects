import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class KBottomButton extends StatelessWidget {
  KBottomButton({@required this.buttonText, @required this.onTap});

  final String buttonText;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        child: Center(
          child: Text(
            buttonText,
            style: kBottonContainerTextStyle,
          ),
        ),
      ),
    );
  }
}
