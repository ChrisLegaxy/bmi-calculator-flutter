import 'package:flutter/material.dart';

import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.title, @required this.onTap});

  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        child: Center(
          child: Text(
            this.title,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        color: Color(0xFFEB1555),
        height: kButtonHeight,
        width: double.infinity,
      ),
    );
  }
}
