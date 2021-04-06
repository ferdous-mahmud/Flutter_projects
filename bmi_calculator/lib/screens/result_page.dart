import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reuseable_curd.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmi, @required this.result, @required this.greeting});

  final String bmi;
  final String result;
  final String greeting;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 50.0),
            child: Text('Your Result'),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ReuseableCurd(
              curdColor: kActiveCardColor,
              curdChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    result, // Result Text
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF24D876),
                    ),
                  ),
                  Text(
                    bmi, // BMI
                    style: TextStyle(
                      fontSize: 100.0,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  Text(
                    greeting, // Greeting Text
                    style: kLableTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Normal BMI range : 18.5 - 25 kg/m2', // Normal BMI Text
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xFFFFFFFF),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          KBottomButton(
            buttonText: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
