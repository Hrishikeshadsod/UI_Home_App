import 'package:flutter/material.dart';
// returning a container required in Living Room screen with fire symbol and the percentage
class ShadowContainer extends StatelessWidget {
  int fire = 26;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey,
            offset: Offset(
              0,
              3.0,
            ),
            blurRadius: 10.0,
            spreadRadius: 3.0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 1,
            child: Image.asset(
              "assets/images/fire.jpg",
              height: 40,
              width: 40,
              fit: BoxFit.fitWidth,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              '$fire %',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
