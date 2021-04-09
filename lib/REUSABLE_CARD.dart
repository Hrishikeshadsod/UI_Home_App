import 'package:flutter/material.dart';

//To return the containers with gesture detection which are required at home screen .
class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.onPress, this.cardChild, this.colour});

  final Widget cardChild;
  final Function onPress;
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );
  }
}
