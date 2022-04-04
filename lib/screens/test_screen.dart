import 'package:flutter/material.dart';

class TapTest extends StatefulWidget {
  const TapTest({Key? key}) : super(key: key);

  @override
  _TapTestState createState() => _TapTestState();
}

class _TapTestState extends State<TapTest> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Center(
          child: Column(
            children: [
              Text(
                '$counter',
                style: TextStyle(fontSize: 40, color: Colors.black),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter = counter + 1;
                  });
                },
                child: Text('click'),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    counter = counter + 1;
                  });
                },
                child: Padding(
                  padding: EdgeInsets.all(40),
                  child: Container(
                    width: 200,
                    height: 200,
                    child: Text('Click'),
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
