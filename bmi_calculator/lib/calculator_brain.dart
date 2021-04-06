import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({@required this.height, @required this.weight});

  final int height;
  final int weight;

  double _bmi;

  String getBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getGreeting() {
    if (_bmi >= 25) {
      return 'You hava a heigher then normal body weight. Try to exrcise more';
    } else if (_bmi > 18.5) {
      return 'Congratulations! Yor are feet well';
    } else {
      return 'You have a lower then normal body weight. Please eat a bit more';
    }
  }
}
