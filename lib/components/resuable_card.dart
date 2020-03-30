import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({
    @required this.color,
    this.childCard,
    this.onPress,
  });

  final Color color;
  final Widget childCard;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onPress,
      child: Container(
        child: this.childCard,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: this.color,
        ),
      ),
    );
  }
}
