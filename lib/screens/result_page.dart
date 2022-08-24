import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Result({required this.gender,required this.age,required this.bmi});
  String gender;
  int bmi;
  int age;
  String? state;
  @override
  Widget build(BuildContext context) {
    if(bmi<16)
    {
      state='Severe Thinness';
    }
    else if(bmi>=16 && bmi<17)
      {
        state='Moderate Thinness';
      }
    else if (bmi>=17 && bmi <18.5)state='Mild Thinness';
    else if(bmi>=18.5 && bmi<=25)state='Normal';
    else if(bmi>25 && bmi <=30) state='Overweight';
    else if(bmi>30 && bmi <35)state='Obese Class I';
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xff191a2b),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Gender: $gender',style: TextStyle(color: Colors.white,fontSize: 24),),
                Text('Age: $age ',style: TextStyle(color: Colors.white,fontSize: 24),),
                Text('BMI: $bmi',style: TextStyle(color: Colors.white,fontSize: 30),),
                Text('$state',style: TextStyle(fontSize: 35,color:Color(0xffe51349)),)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
