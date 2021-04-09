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
      appBar: AppBar(
        title: Text(
              'Living Room',
              style: TextStyle(
                color:Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),

            ),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_sharp),
          color: Colors.black,
          iconSize:25 ,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        shadowColor:Colors.white,
       backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          //To separate app content from all sides of screen
          padding: EdgeInsets.all(15),
          //Column for different widgets
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
             /* Expanded(
                flex: 1,
                //first row on the screen

              ),*/
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
                              margin: EdgeInsets.only(left: 17, right: 17),
                              decoration: BoxDecoration(
                                color: Color(0XFFF0F9FC),
                                borderRadius: BorderRadius.circular(170.0),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Expanded(
                                    flex: 8,
                                    child: CircleAvatar(
                                      radius: 157,
                                      /*backgroundColor: Color(0XFFE57DA1),
                                      child: CircleAvatar(
                                        radius: 117,
                                        backgroundColor: Colors.white,*/
                                      backgroundImage:AssetImage('assets/images/clock.JPG'),
                                        child: CircleAvatar(
                                          radius: 87,
                                          backgroundColor:Colors.white ,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              SizedBox(
                                                height: 30,
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
                                                height: 20,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),

                                  Expanded(
                                    flex: 3,
                                    child: Padding(
                                      padding: EdgeInsets.all(20),
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
                                                enabledThumbRadius: 20.0),
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
                child: Padding(
                  padding:EdgeInsets.only(left:15.0,right:15,bottom: 5 ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex:5,
                        child: LivingRoomCard(
                          colour: Color(0XFFE9E7F7),
                          icon: "assets/images/light.png",
                          label: 'Light',
                          label2: 'On',
                        ),
                      ),

                      Expanded(
                        flex:5,
                        child: LivingRoomCard(
                          colour: Color(0XFFFAEBE8),
                          icon: 'assets/images/cooler.png',
                          label: 'Cooler',
                          label2: 'Off',
                        ),
                      ),

                      Expanded(
                        flex:5,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
