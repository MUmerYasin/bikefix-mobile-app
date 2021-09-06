import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:two_wheel_vehicle/config.dart';
import 'package:two_wheel_vehicle/widgets.dart';

import 'Become_Partner.dart';
import 'Track_Screen.dart';

class Time extends StatefulWidget {
  const Time({Key? key}) : super(key: key);

  @override
  _TimeState createState() => _TimeState();
}

class _TimeState extends State<Time> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicColors.background,
      appBar: AppBar(
        elevation: 0,
        title: Text('',style: TextStyle(color: Colors.black),),
        backgroundColor: NeumorphicColors.background,
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Row(
            children: [
              appsign()
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: Calender(
      ),

    );
  }
}

class Calender extends StatefulWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {

  var _switch = false;
  int selected = 1;
  int selectedd = 3;



  DateTime? _selectedDay;
  DateTime? _focusedDay;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Neumorphic(
                margin: EdgeInsets.all(25),

                style: NeumorphicStyle(
                    shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black54
                    , shadowDarkColor: Colors.black,shadowLightColor: Colors.white
                ),
                child:  Column(
                    children: [
                      
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Column(
                          children: [
                            TableCalendar(focusedDay: DateTime.now(), firstDay:
                            DateTime.utc(2010,10,16), lastDay: DateTime.utc(2030,3,4),calendarStyle:
                            CalendarStyle(markerSize: 10,markersAnchor: 10,isTodayHighlighted: true,
                                rowDecoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(color: Colors.white,width: 3)
                                  )
                                ),
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

                              selectedDayPredicate: (day) {

                                return isSameDay(_selectedDay, day);
                              },
                              onDaySelected: (selectedDay, focusedDay) {
                                setState(() {
                                  _selectedDay = selectedDay;
                                  _focusedDay = focusedDay; // update `_focusedDay` here as well
                                });
                              },

                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                  
                ),
              ),
            
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 38.0,top: 18),
                  child: Text('Select Time'),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0,top: 10),
                child: Row(
                  children: [
                    CustomConatiner(onPressed: (){
                      setState(() {
                        selected = 1;
                      });
                    },
                        child: 'AM',
                        color: selected == 1 ? true : false),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: CustomConatiner(onPressed: (){
                        setState(() {
                          selected = 2;
                        });
                      },
                          child: 'PM',
                          color: selected == 2 ? true : false),
                    )
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 0.0,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomConatiner(onPressed: (){
                    setState(() {
                      selectedd = 3;
                    });
                  },
                      child: '12 - 01',
                      color: selectedd == 3 ? true : false),

                  CustomConatiner(onPressed: (){
                    setState(() {
                      selectedd = 4;
                    });
                  },
                      child: '01-02',
                      color: selectedd == 4 ? true : false),

                  CustomConatiner(onPressed: (){
                    setState(() {
                      selectedd = 5;
                    });
                  },
                      child: '02-03',
                      color: selectedd == 5 ? true : false),

                  CustomConatiner(onPressed: (){
                    setState(() {
                      selectedd = 6;
                    });
                  },
                      child: '03-04',
                      color: selectedd == 6 ? true : false),





                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 0.0,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomConatiner(onPressed: (){
                    setState(() {
                      selectedd = 7;
                    });
                  },
                      child: '04-05',
                      color: selectedd == 7 ? true : false),

                  CustomConatiner(onPressed: (){
                    setState(() {
                      selectedd = 8;
                    });
                  },
                      child: '05-06',
                      color: selectedd == 8 ? true : false),

                  CustomConatiner(onPressed: (){
                    setState(() {
                      selectedd = 9;
                    });
                  },
                      child: '06-07',
                      color: selectedd == 9 ? true : false),

                  CustomConatiner(onPressed: (){
                    setState(() {
                      selectedd = 10;
                    });
                  },
                      child: '07-08',
                      color: selectedd == 10 ? true : false),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height/9,
                child: Neumorphic(
                  margin: EdgeInsets.all(16),
                  child: GestureDetector(
                    onTap : (){
                      setState(() {
                        _switch = _switch;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Text('Require Pickup',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: CupertinoSwitch(value: (_switch), onChanged: (value){
                            setState(() {
                              _switch = value;
                            });
                          }),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: RoundedCornerButton(onPressed: (){},child: 'Book Now',),
              ),
            )


        ]




        )
      )
    );


  }
}

// width: 290,
// height: 360,

