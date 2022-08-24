import 'package:bmi_calculator/screens/home_page.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BMI());
}
class BMI extends StatelessWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black
      ),
      routes: {
        'home':(context)=>HomePage(),
      },
      initialRoute: 'home',
    );
  }
}
