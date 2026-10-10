import 'dart:math';

class CalculaterBrain {
  CalculaterBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Keep it up!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more and do daily yoga.';
    }
  }

  double estimateBodyFat({required int age, required bool isMale}) {
    return 1.20 * _bmi + 0.23 * age - 10.8 * (isMale ? 1 : 0) - 5.4;
  }
}
