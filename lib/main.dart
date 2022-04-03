import 'dart:ui';

import 'package:bmi_calc/widgets/background_shape_left.dart';
import 'package:bmi_calc/widgets/background_shape_right.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            RightShape(
              widht: 180,
            ),
            RightShape(
              widht: 190,
            ),
            RightShape(
              widht: 210,
            ),
            LeftShape(
              width: 200,
            ),
            LeftShape(
              width: 210,
            ),
            LeftShape(
              width: 220,
            ),
          ],
        )),
      ),
    );
  }
}
