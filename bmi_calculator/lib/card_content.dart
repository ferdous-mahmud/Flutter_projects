import 'package:flutter/material.dart';

const lableTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);
const iconSize = 80.0;
const sizedBoxHeight = 15.0;

class CardContent extends StatelessWidget {
  CardContent({@required this.cardIcon, @required this.cardText});

  final IconData cardIcon;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(cardIcon, size: iconSize),
        SizedBox(
          height: sizedBoxHeight,
        ),
        Text(
          cardText,
          style: lableTextStyle,
        ),
      ],
    );
  }
}
