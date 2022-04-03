import 'package:flutter/material.dart';

class LeftShape extends StatelessWidget {
  final double width;

  const LeftShape({Key? key, this.width = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
            ),
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
