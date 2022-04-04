import 'package:bmi_calc/constants/constants.dart';
import 'package:bmi_calc/screens/test_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TapTest());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'dana'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'تو چنده ؟ BMI',
            style: TextStyle(
              color: balck,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: 300,
                child: TextField(
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: orangeBackground),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'وزن',
                    hintStyle:
                        TextStyle(color: orangeBackground.withOpacity(0.5)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
