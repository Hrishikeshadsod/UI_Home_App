import 'package:flutter/material.dart';

// To design all the containers present in the living room screen
class LivingRoomCard extends StatelessWidget {
  LivingRoomCard({@required this.label, this.label2, this.icon, this.colour});
  final String icon;
  final String label;
  final String label2;
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
     /* height:180,
      width: 120,*/
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 20,
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
            label2,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          )
        ],
      ),
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}
