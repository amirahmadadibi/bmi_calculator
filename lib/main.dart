import 'package:bmi_calc/screens/home_screen.dart';
import 'package:bmi_calc/screens/test_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'dana'),
        debugShowCheckedModeBanner: false,
        home: HomeScreen());
  }
}
