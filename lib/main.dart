import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF090C22),
        scaffoldBackgroundColor: Color(0xFF090C22),
        accentColor: Colors.purpleAccent,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/resultPage': (context) => ResultPage(),
      },
    );
  }
}
