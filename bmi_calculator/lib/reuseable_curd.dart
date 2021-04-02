import 'package:flutter/material.dart';

class ReuseableCurd extends StatelessWidget {
  ReuseableCurd({@required this.curdColor, this.curdChild});

  final Color curdColor;
  final Widget curdChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: curdChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: curdColor,
      ),
    );
  }
}
