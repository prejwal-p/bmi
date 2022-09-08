import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int? height;
  final int? weight;

  double? _bmi;

  String calculateBMI() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return 'Overweight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi! >= 25) {
      return 'You Have A Higher Than Normal Body Weight. You Need More Exercise!';
    } else if (_bmi! > 18.5) {
      return 'You Have A Normal Body Weight. Great Job!';
    } else {
      return 'You Have A Lower Than Normal Body Weight. You Can Eat A Bit More!';
    }
  }
}
