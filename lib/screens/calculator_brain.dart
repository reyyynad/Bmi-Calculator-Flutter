

import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;
 double get _bmi => calculateBMI();


  double calculateBMI(){
    double bmi = weight / pow(height/100, 2);
    return bmi;
  }

  String getResult(){
    if(_bmi >= 25) {
      return 'OVERWEIGHT';
    }
    else if(_bmi >= 18.5){
      return 'NORMAL';

    }
    else{
      return 'UNDERWEIGHT';
    }
  }

    String getMessage(){
    if(_bmi >= 25) {
      return 'You have higher than normal body weight. Try to exercise more.';
    }
    else if(_bmi >= 18.5){
      return 'Great! You have a normal body weight.';

    }
    else{
      return 'You have lower than normal body weight. Try to eat a bit more.';
    }
  }

}