import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  int result;
  bool isMale;
  int age;
  BmiResult({
    @required this.result,
    @required this.isMale,
    @required this.age,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(27, 27, 47, 1),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(22, 36, 71, 1),
        title: Text(
          'BMI RESULT',
          style: TextStyle(
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'GENDER : ${isMale ? 'MALE' : 'FEMALE'}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'RESULT : ${result<=18?'UNDERWEIGHT':result>=19&&result<25?'NORMAL':result>=25&&result<30?'OVERWEIGHT':result>=30?'OBESE':'ERROR'}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'AGE : $age',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
