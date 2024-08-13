// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        //if you want to use the hex code color put 0XFFhexcocde
        primaryColor: Color(0XFF0a0E21),
        scaffoldBackgroundColor: Color(0XFF0a0d22),
        appBarTheme: AppBarTheme(
          color: Color(0XFF0a0E21),
        ),
      ),
      home: InputPage(),
      
    );
  }
}

