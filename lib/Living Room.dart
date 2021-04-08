import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'Living_Room_Cards.dart';
import 'REUSABLE_CARD.dart';
import 'icon_content.dart';
import 'shadowContainer.dart';

class LivingRoom extends StatefulWidget {
  double temp = 26;
  @override
  _LivingRoomState createState() => _LivingRoomState();
}

class _LivingRoomState extends State<LivingRoom> {
  int temp = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          //To separate app content from all sides of screen
          padding: EdgeInsets.all(20),
          //Column for different widgets
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 1,
                //first row on the screen
                child: Row(
                  children: <Widget>[
                    Icon(
                      CupertinoIcons.arrow_left,
                      size: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        'Living Room',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 7,
                //second row with the temperature slider
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 33, right: 33),
                              decoration: BoxDecoration(
                                color: Color(0XFFF0F9FC),
                                borderRadius: BorderRadius.circular(170.0),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                    flex: 7,
                                    child: CircleAvatar(
                                      radius: 137,
                                      backgroundColor: Color(0XFFE57DA1),
                                      child: CircleAvatar(
                                        radius: 117,
                                        backgroundColor: Colors.white,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            SizedBox(
                                              height: 40,
                                            ),
                                            Expanded(
                                              flex: 4,
                                              child: Text(
                                                '$temp°c',
                                                style: TextStyle(
                                                  fontSize: 60,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Text(
                                                'Room',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Text(
                                                'Temperature',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 40,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        child: SliderTheme(
                                          data:
                                              SliderTheme.of(context).copyWith(
                                            inactiveTrackColor:
                                                Color(0xFFF4F7FC),
                                            activeTrackColor: Color(0XFFE0F7F7),
                                            thumbColor: Colors.black,
                                            thumbShape: RoundSliderThumbShape(
                                                enabledThumbRadius: 15.0),
                                            overlayShape:
                                                RoundSliderOverlayShape(
                                                    overlayRadius: 30.0),
                                          ),
                                          child: Slider(
                                            value: temp.toDouble(),
                                            min: 0.0,
                                            max: 100.0,
                                            onChanged: (double newValue) {
                                              setState(() {
                                                temp = newValue.round();
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      'Room Temperature',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: SizedBox(),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 475,
                      child: ShadowContainer(),
                    ),
                  ],
                ),
              ),
              /*Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 130, right: 130, top: 20, bottom: 20),
                  child: ShadowContainer(),
                ),
              ),*/

              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Devices',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                //third row
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: LivingRoomCard(
                        colour: Color(0XFFE9E7F7),
                        icon: "assets/images/light.png",
                        label: 'Light',
                        label2: 'On',
                      ),
                    ),
                    Expanded(
                      child: LivingRoomCard(
                        colour: Color(0XFFFAEBE8),
                        icon: 'assets/images/cooler.png',
                        label: 'Cooler',
                        label2: 'Off',
                      ),
                    ),
                    Expanded(
                      child: LivingRoomCard(
                        colour: Color(0XFFE7F7F1),
                        icon: "assets/images/tv.jpg",
                        label: 'Smart TV',
                        label2: 'Off',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
