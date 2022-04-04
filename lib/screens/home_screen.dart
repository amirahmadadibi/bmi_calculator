import 'package:bmi_calc/constants/constants.dart';
import 'package:bmi_calc/widgets/background_shape_left.dart';
import 'package:bmi_calc/widgets/background_shape_right.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final weightController = TextEditingController();
  final heightController = TextEditingController();

  double resultBMI = 0;
  String reslutText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                    controller: weightController,
                    textAlign: TextAlign.center,
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
                ),
                Container(
                  width: 130,
                  child: TextField(
                    controller: heightController,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: orangeBackground),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'قد',
                      hintStyle:
                          TextStyle(color: orangeBackground.withOpacity(0.5)),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                final weight = double.parse(weightController.text);
                final height = double.parse(heightController.text);

                setState(() {
                  resultBMI = weight / (height * height);
                  if (resultBMI > 25) {
                    reslutText = 'شما اضافه وزن دارید';
                  } else if (resultBMI >= 18.5 && resultBMI <= 25) {
                    reslutText = 'وزن شما نرمال است';
                  } else {
                    reslutText = 'وزن شما کم‌تر از حد نرمال است';
                  }
                });
              },
              child: Text(
                '! محاسبه کن',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              '${resultBMI.toStringAsFixed(2)}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 64),
            ),
            Text(
              '$reslutText',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: orangeBackground),
            ),
            SizedBox(
              height: 80,
            ),
            RightShape(
              widht: 250,
            ),
            SizedBox(
              height: 15,
            ),
            RightShape(
              widht: 200,
            ),
            SizedBox(
              height: 15,
            ),
            RightShape(
              widht: 150,
            ),
            LeftShape(
              width: 200,
            ),
            SizedBox(
              height: 15,
            ),
            LeftShape(
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
}
