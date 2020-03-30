import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  CalculatorBrain({
    @required this.height,
    @required this.weight,
  });

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    this._bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String results() {
    if (this._bmi >= 25) {
      return 'Overweight';
    } else if (this._bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (this._bmi >= 25) {
      return 'Try to exercise more';
    } else if (this._bmi > 18.5) {
      return 'Good job';
    } else {
      return 'Eat more';
    }
  }
}
