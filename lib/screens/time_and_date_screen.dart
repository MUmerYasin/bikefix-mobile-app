import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/widgets.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:timeline_tile/timeline_tile.dart' as prefix;
import '../config.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:table_calendar/table_calendar.dart';


class TimeAndDateScreen extends StatefulWidget {
  @override
  _TimeAndDateScreenState createState() => _TimeAndDateScreenState();
}

class _TimeAndDateScreenState extends State<TimeAndDateScreen> {
  int timeSelected = 1;
  int amSelected = 2;

  bool _switchValue=true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: backgroundColor,
        // leading: Image.asset('assets/icons/back_icon.png',fit: BoxFit.fill,),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          screenTitleTrackOrder,
          style: TextStyle(
            fontFamily: textFontFamily,
            fontSize: 18,
            color: Colors.black,
          ),
          textAlign: TextAlign.left,
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        // physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              ///
              Padding(
                padding: const EdgeInsets.only(top: 4.0, bottom: 10, ),
                child: Neumorphic(
                  style: NeumorphicStyle(
                    shadowDarkColor: Colors.black.withOpacity(0.6),
                    depth: 8,
                    shape: NeumorphicShape.flat,
                    // shadowDarkColor: Colors.black12,
                    shadowLightColor: Colors.white,
                    shadowDarkColorEmboss: Colors.black.withOpacity(0.8),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    // height: 160,
                    padding:
                    EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      gradient: LinearGradient(
                        begin: Alignment(-1.0, -1.0),
                        end: Alignment(1.01, 1.0),
                        colors: [
                          const Color(0xffeef0f5),
                          const Color(0xffe6e9ef)
                        ],
                        stops: [0.0, 1.0],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xb2a6b4c8),
                          offset: Offset(10, 10),
                          blurRadius: 48,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [




                        TableCalendar(focusedDay: DateTime.now(), firstDay:
                        DateTime.utc(2010,10,16), lastDay: DateTime.utc(2030,3,4),calendarStyle:
                        CalendarStyle(markerSize: 10,markersAnchor: 10,isTodayHighlighted: true,
                            rangeHighlightColor: Colors.red,markerDecoration:
                            BoxDecoration(color: Colors.red,),outsideDaysVisible: true,
                            markersAutoAligned: true,rangeStartDecoration: BoxDecoration(color: Colors.red) ),
                          headerVisible: true,daysOfWeekVisible: true,availableGestures: AvailableGestures.all,
                          daysOfWeekStyle: DaysOfWeekStyle(weekdayStyle: TextStyle(color: Colors.black),),
                          daysOfWeekHeight: 10,pageJumpingEnabled: true,
                          calendarFormat: CalendarFormat.month,
                          startingDayOfWeek: StartingDayOfWeek.monday,
                          headerStyle: HeaderStyle(
                            formatButtonVisible: false,
                          ),
                          pageAnimationCurve: Curves.fastLinearToSlowEaseIn,

                        )



                        // DividerCustom(),



                      ],
                    ),
                  ),
                ),
              ),


              ///select Time Text
              Padding(
                padding: const EdgeInsets.only(top: 8.0,left: 25.0, bottom: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    selectTimeText,
                    style: TextStyle(
                      fontFamily: textFontFamily,
                      fontSize: 15,
                      color: const Color(0xff575656),
                      height: 1,
                    ),
                    textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),

              ///Buttons for Select (AM or PM) and Time
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 14.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ///Button AM
                          amAndPmButton(
                              onPressed: () {
                                setState(
                                      () {
                                        amSelected = 1;
                                  },
                                );
                              },
                              child: amText  ,
                              images:true,
                            checkAM:true,
                              color: amSelected == 1 ? true : false,
                          ),

                          ///Button  PM
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: amAndPmButton(
                                onPressed: () {
                                  setState(
                                        () {
                                          amSelected = 2;
                                    },
                                  );
                                },
                                child: pmText  ,
                                images:true,
                              checkAM:false,
                                color: amSelected == 2 ? true : false,),
                          ),
                        ],
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///Button 12-01
                          timeRoundedCornerButton(
                              onPressed: () {
                                setState(
                                      () {
                                    timeSelected = 1;
                                  },
                                );
                              },
                              child: timeBetweenText12 ,
                              images:false,
                              color: timeSelected == 1 ? true : false),

                          ///Button 01-02
                          timeRoundedCornerButton(
                              onPressed: () {
                                setState(
                                      () {
                                    timeSelected = 2;
                                  },
                                );
                              },
                              child: timeBetweenText1 ,
                              images:false,
                              color: timeSelected == 2 ? true : false),

                          ///button 02-03
                          timeRoundedCornerButton(
                              onPressed: () {
                                setState(
                                      () {
                                    timeSelected = 3;
                                  },
                                );
                              },
                              child: timeBetweenText2,
                              images:false,
                              color: timeSelected == 3 ? true : false),


                          ///button 03-04
                          timeRoundedCornerButton(
                              onPressed: () {
                                setState(
                                      () {
                                    timeSelected = 4;
                                  },
                                );
                              },
                              child: timeBetweenText3 ,
                              images:false,
                              color: timeSelected == 4 ? true : false),

                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 8.0,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///Button 04-05
                          timeRoundedCornerButton(
                              onPressed: () {
                                setState(
                                      () {
                                    timeSelected = 5;
                                  },
                                );
                              },
                              child: timeBetweenText4 ,
                              images:false,
                              color: timeSelected == 5 ? true : false),

                          ///Button 05-06
                          timeRoundedCornerButton(
                              onPressed: () {
                                setState(
                                      () {
                                    timeSelected = 6;
                                  },
                                );
                              },
                              child: timeBetweenText5 ,
                              images:false,
                              color: timeSelected == 6 ? true : false),

                          ///button 06-07
                          timeRoundedCornerButton(
                              onPressed: () {
                                setState(
                                      () {
                                    timeSelected = 7;
                                  },
                                );
                              },
                              child: timeBetweenText6 ,
                              images:false,
                              color: timeSelected == 7 ? true : false),


                          ///button 07-08
                          timeRoundedCornerButton(
                              onPressed: () {
                                setState(
                                      () {
                                    timeSelected = 8;
                                  },
                                );
                              },
                              child: timeBetweenText7 ,
                              images:false,
                              color: timeSelected == 8 ? true : false),

                        ],
                      ),
                    ),


                  ],
                ),
              ),

              ///Require Pick Up Time Text
              Padding(
                padding: const EdgeInsets.only(top: 4.0, bottom: 10, ),
                child: Neumorphic(
                  style: NeumorphicStyle(
                    shadowDarkColor: Colors.black.withOpacity(0.6),
                    depth: 8,
                    shape: NeumorphicShape.flat,
                    // shadowDarkColor: Colors.black12,
                    shadowLightColor: Colors.white,
                    shadowDarkColorEmboss: Colors.black.withOpacity(0.8),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    // height: 160,
                    padding:
                    EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      gradient: LinearGradient(
                        begin: Alignment(-1.0, -1.0),
                        end: Alignment(1.01, 1.0),
                        colors: [
                          const Color(0xffeef0f5),
                          const Color(0xffe6e9ef)
                        ],
                        stops: [0.0, 1.0],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xb2a6b4c8),
                          offset: Offset(10, 10),
                          blurRadius: 48,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [


                        Padding(
                          padding: const EdgeInsets.only(top: 8.0,left: 16.0, bottom: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              RequirePickUpTimeText ,
                              style: TextStyle(
                                fontFamily: textFontFamily,
                                fontSize: 16,
                                color: const Color(0xff575656),
                                fontWeight: FontWeight.bold,
                                height: 1,
                              ),
                              textHeightBehavior:
                              TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),



                        Switch(
                          activeColor: Colors.green,
                          // activeTrackColor:Colors.white,
                          value: _switchValue,
                          onChanged: (value) {
                            setState(() {
                              _switchValue = value;
                            });
                          },
                        ),

                        // DividerCustom(),



                      ],
                    ),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: RoundedCornerButton(
                      onPressed:(){

                    },
                        child: buttonNameBookNow,
                    ),
                  ),

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class timeRoundedCornerButton extends StatelessWidget {
  Function()? onPressed;
  String? child;
  bool? color;
  bool? images;

  timeRoundedCornerButton({this.onPressed, this.child, this.color, this.images});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: MediaQuery.of(context).size.width*0.2,
      child: Neumorphic(
        style: NeumorphicStyle(
            depth: 10,
            shape: NeumorphicShape.flat,
            // shadowDarkColor: Colors.black12,
            shadowDarkColor: color! ? buttonColor : Colors.black.withOpacity(0.8),
            shadowLightColor: Colors.white,
            shadowDarkColorEmboss: Colors.black.withOpacity(0.8),

          //  boxShape: NeumorphicBoxShape.circle(),
        ),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: color! ? buttonColor : Colors.white.withOpacity(0.8),
                textStyle: TextStyle(
                  fontFamily: textFontFamily,
                  fontSize: 14,
                  color: const Color(0xffffffff),

                  fontWeight: FontWeight.w500,
                ),
            ),
            onPressed: onPressed,
            child: Center(child: Row(
              children: [
                if (images!) Image.asset(amIconCustomMenuImagePath, height: 20 ,),


                  Text(child ?? '',style: TextStyle(
                    color:color! ? Colors.white : Colors.black,
                  ),
                ),
              ],
            ))),
      ),
    );
  }
}


class amAndPmButton extends StatelessWidget {
  Function()? onPressed;
  String? child;
  bool? color;
  bool? images;
  bool? checkAM;

  amAndPmButton({this.onPressed, this.child, this.color, this.images, this.checkAM});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 85,
      child: Neumorphic(
        style: NeumorphicStyle(
          depth: 10,
          shape: NeumorphicShape.flat,
          // shadowDarkColor: Colors.black12,
          shadowDarkColor: color! ? buttonColor : Colors.black.withOpacity(0.8),
          shadowLightColor: Colors.white,
          shadowDarkColorEmboss: Colors.black.withOpacity(0.8),

          //  boxShape: NeumorphicBoxShape.circle(),
        ),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: color! ? buttonColor : Colors.white.withOpacity(0.8),
              textStyle: TextStyle(
                fontFamily: textFontFamily,
                fontSize: 14,
                color: const Color(0xffffffff),

                fontWeight: FontWeight.w500,
              ),
            ),
            onPressed: onPressed,
            child: Center(child: Row(
              children: [
                if (images! && checkAM!) Image.asset(amIconCustomMenuImagePath, height: 20 ,)
                else Image.asset(pmIconCustomMenuImagePath, height: 20 ,),


                Text(child ?? '',style: TextStyle(
                  color:color! ? Colors.white : Colors.black,
                ),
                ),
              ],
            ))),
      ),
    );
  }
}


//
// ///Order Details, Booking, Pickup and Delivery Date and Time
// class SingleOrderDetailsProcess extends StatefulWidget {
//   // const SingleOrderDetailsProcess({Key? key}) : super(key: key);
//   final String titleDetails;
//   final String timeAndDate;
//
//   const SingleOrderDetailsProcess(
//       {Key? key, required this.titleDetails, required this.timeAndDate})
//       : super(key: key);
//
//   @override
//   _SingleOrderDetailsProcessState createState() =>
//       _SingleOrderDetailsProcessState();
// }
//
// class _SingleOrderDetailsProcessState extends State<SingleOrderDetailsProcess> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 ///Booking date & time
//                 widget.titleDetails,
//                 style: TextStyle(
//                   fontFamily: textFontFamily,
//                   fontSize: 14,
//                   color: const Color(0xff686868),
//                   height: 1,
//                 ),
//                 textHeightBehavior:
//                 TextHeightBehavior(applyHeightToFirstAscent: false),
//                 textAlign: TextAlign.left,
//               ),
//             ),
//           ],
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.fromLTRB(8, 2, 8, 16),
//               child: Text(
//                 ///time and Date Description
//                 widget.timeAndDate,
//                 style: TextStyle(
//                   fontFamily: textFontFamily,
//                   fontSize: 14,
//                   color: const Color(0xff000000),
//                   height: 1,
//                 ),
//                 textHeightBehavior:
//                 TextHeightBehavior(applyHeightToFirstAscent: false),
//                 textAlign: TextAlign.left,
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
//
//
