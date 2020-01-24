import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi < 18.5) {
      return 'UNDERWEIGHT';
    } else if (_bmi < 25) {
      return 'NORMAL';
    } else if (_bmi < 30) {
      return 'OVERWEIGHT';
    } else {
      return 'OBESITY';
    }
  }

  String getInterpretation() {
    if (_bmi < 18.5) {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    } else if (_bmi < 25) {
      return 'You have a normal body weight. Good job!';
    } else if (_bmi < 30) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else {
      return 'You have a big problem my friend. Look for a doctor!';
    }
  }
}
