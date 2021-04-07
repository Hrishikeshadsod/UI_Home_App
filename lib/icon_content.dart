import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label, this.label1});

  final String icon;
  final String label;
  final int label1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.white,
          child: Image.asset(
            icon,
            height: 25,
            width: 25,
            fit: BoxFit.fitWidth,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          '$label1 devices',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
