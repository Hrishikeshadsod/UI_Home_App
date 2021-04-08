import 'package:flutter/material.dart';
// returning a container required in Living Room screen with fire symbol and the percentage
class ShadowContainer extends StatelessWidget {
  int fire = 26;
  @override
  Widget build(BuildContext context) {
    return Container(
      height:95,
      width:95,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFE7E7E7),
            offset: Offset(
              2,
              2.0,
            ),
            blurRadius: 30.0,
            spreadRadius: 5.0,
          ),
        ],
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Expanded(
            flex: 3,
            child: Image.asset(
              "assets/images/fire.jpg",
              height: 60,
              width: 60,
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
