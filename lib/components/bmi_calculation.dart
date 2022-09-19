import "dart:math";

class BMICalculator {
  BMICalculator({required this.height, required this.weight});

  int height;
  int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String appreciation() {
    if (_bmi >= 25) {
      return 'Kiti khato bas ki ata.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'Kha thod tari kha bala.';
    }
  }
}
