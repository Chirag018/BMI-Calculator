import 'dart:math';

class Calculator {
  Calculator({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;

  String calculatorBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 24)
      return 'Overweight';
    else if (_bmi > 17)
      return 'Normal';
    else
      return 'Underweight';
  }

  String getData() {
    if (_bmi > 24)
      return 'You have to reduce weight!!';
    else if (_bmi > 17)
      return 'You are Normal';
    else
      return 'You have to gain weight';
  }
}
