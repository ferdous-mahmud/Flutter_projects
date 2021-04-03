import 'package:flutter/material.dart';

class ReuseableCurd extends StatelessWidget {
  ReuseableCurd({@required this.curdColor, this.curdChild, this.onPress});

  final Color curdColor;
  final Widget curdChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: curdChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: curdColor,
        ),
      ),
    );
  }
}
