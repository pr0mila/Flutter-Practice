import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  double _bmi =0.0;

  String? calculateBMI()
  {
    double _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String? getResult()
  {
    if(_bmi >= 25){
      return 'Overweight';
    }
    else if (_bmi > 18 && _bmi <=25){
      return 'Normal';
    }
    else
      {
        return 'Underweight';
      }

  }

  String? getInterpretation()
  {
    if(_bmi>=25)
      return 'You are Overweight. Try to do some exercise';
    else if (_bmi > 18 )
      return 'Yor BMI is Normal. Good job!';
    else
      return 'Your BMI is lower. You should eat a bit more.';
  }

}