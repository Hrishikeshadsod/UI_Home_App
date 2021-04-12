import 'package:assignment_ui_app/Living%20Room.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'REUSABLE_CARD.dart';
import 'icon_content.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 20,),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: Icon(CupertinoIcons.circle_grid_3x3_fill)),
                    Expanded(
                      flex: 10,
                      child: SizedBox(
                        height: 5,
                        width: 5,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Icon(CupertinoIcons.infinite),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex:1,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[
                    Text(
                      'Hi Sajon',
                      style: GoogleFonts.quicksand(
                        textStyle:TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w700,
                      ),
                      ),
                    ),
                    Image.asset(
                      "assets/images/hand.jpg",
                      height: 40,
                      width: 40,
                      fit: BoxFit.fitWidth,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex:1,
                child: Row(
                  children: <Widget>[
                    Text(
                      'Wellcome to Orix Home.',
                      style: GoogleFonts.quicksand(
                        textStyle:TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                      ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex:1,
                child: Padding(
                  padding: const EdgeInsets.only(top:3,bottom: 3,left: 10,right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Your ',
                        style:GoogleFonts.quicksand(
                          textStyle: TextStyle(
                          fontSize: 38.0,
                          fontWeight: FontWeight.w300,
                        ),
                        ),
                      ),
                      Text(
                        'Rooms',
                        style: GoogleFonts.quicksand(
                          textStyle:TextStyle(
                          fontSize: 38.0,
                          fontWeight: FontWeight.w800,
                        ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          width: 5,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(2),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Add',
                                  style: GoogleFonts.quicksand(
                                    textStyle:TextStyle(
                                      fontWeight: FontWeight.w500,
                                    color: Color(0XFF52B4A8),
                                  ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                CircleAvatar(
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ),
                                  radius: 10,
                                  backgroundColor: Color(0XFF52B4A8),
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0XFFE1F8F6),
                            borderRadius: BorderRadius.circular(120.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

             Expanded(
               flex: 12,
                 child:Column(
                   children: <Widget>[
                     Expanded(
                         flex: 4,
                         child: Padding(
                           padding: EdgeInsets.only(left: 15,right: 15),
                           child: Row(
                             children: <Widget>[
                               Expanded(
                                 child: ReusableCard(
                                   colour: Color(0XFFECC8D0),
                                   cardChild: IconContent(
                                     icon: "assets/images/sofa.jpg",
                                     label: 'Living Room',
                                     label1: 5,
                                   ),
                                   onPress: () {
                                     setState(() {});
                                     _navigateAndDisplaySelection(context);
                                   },
                                 ),
                               ),
                               Expanded(
                                 child: ReusableCard(
                                   onPress: () {
                                     setState(() {});
                                   },
                                   colour: Color(0XFFFAF3E1),
                                   cardChild: IconContent(
                                     icon: "assets/images/kitchen.jpg",
                                     label: 'Kitchen',
                                     label1: 4,
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         )),
                     Expanded(
                       flex: 4,
                       child: Padding(
                         padding: const EdgeInsets.only(left: 15,right: 15),
                         child: Row(
                           children: <Widget>[
                             Expanded(
                               child: ReusableCard(
                                 colour: Color(0XFFE9E6F7),
                                 cardChild: IconContent(
                                   icon: "assets/images/office.jpg",
                                   label: 'Office',
                                   label1: 10,
                                 ),
                               ),
                             ),
                             Expanded(
                               child: ReusableCard(
                                 onPress: () {
                                   setState(() {
                                     ;
                                   });
                                 },
                                 colour: Color(0XFFD0EDF5),
                                 cardChild: IconContent(
                                   icon: "assets/images/bedroom.jpg",
                                   label: 'Bedroom',
                                   label1: 6,
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),
                     ),
                     Expanded(
                       flex: 4,
                       child: Padding(
                         padding: const EdgeInsets.only(left: 15,right: 15),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           crossAxisAlignment: CrossAxisAlignment.stretch,
                           children: <Widget>[
                             Expanded(
                               child: ReusableCard(
                                 colour: Color(0XFFFAEAE7),
                                 cardChild: IconContent(
                                   icon: "assets/images/bathroom.jpg",
                                   label: 'Bathroom',
                                   label1: 7,
                                 ),
                               ),
                             ),
                             Expanded(
                               child: ReusableCard(
                                 onPress: () {
                                   setState(() {
                                     ;
                                   });
                                 },
                                 colour: Color(0XFFEFF6E4),
                                 cardChild: IconContent(
                                   icon: "assets/images/dining.jpg",
                                   label: 'Dining Room',
                                   label1: 4,
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
            ],
          ),
        ),
      ),
    );
  }
}


//pushing the context to next screen when user clicks to Living Room Icon

_navigateAndDisplaySelection(BuildContext context) async {
  // Navigator.push returns a Future that completes after calling
  // Navigator.pop on the Selection Screen.
  final result = await Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LivingRoom()),
  );
}
