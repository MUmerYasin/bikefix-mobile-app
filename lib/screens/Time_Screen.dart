import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
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
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,),
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

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Neumorphic(
                style: NeumorphicStyle(
                    shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black54 , shadowDarkColor: Colors.black54,shadowLightColor: Colors.white
                ),
                child: Container(
                  width: 290,
                  height: 300,
                  
                  child: Column(
                    children: [
                      
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Sun',style: TextStyle(fontWeight: FontWeight.w700),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Mon',style: TextStyle(fontWeight: FontWeight.w700)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Tue',style: TextStyle(fontWeight: FontWeight.w700)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Wed',style: TextStyle(fontWeight: FontWeight.w700)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Thu',style: TextStyle(fontWeight: FontWeight.w700)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Fri',style: TextStyle(fontWeight: FontWeight.w700)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Sat',style: TextStyle(fontWeight: FontWeight.w700)),
                            ),

                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Neumorphic(
                          style: NeumorphicStyle(
                              shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white,
                            depth: NeumorphicTheme.embossDepth(context),
                            ),
                          child: Container(
                            width: 260,
                            height: 3,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                          ],
                        ),
                      )
                      
                    ],
                  ),
                  
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
              padding: const EdgeInsets.only(left: 33.0),
              child: Row(
                children: [

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Row(
                children: [




                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Row(
                children: [



                ],
              ),
            ),



            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0,top: 10),
                  child: Neumorphic(
                    style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                    child: Container(
                      child: Row(
                        children: [

              ],
            ),

                        )
                  )
                    ),

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 28.0,left: 10),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black54 , shadowDarkColor: Colors.black45,shadowLightColor: Colors.white

                    ),
                    child: Container(
                      width: 280,
                      height: 50,
                      child: ListTile(
                        title: Text('Require Pickup',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                        trailing: CupertinoSwitch(value: (_switch), onChanged: (bool value) {
                          setState(() {
                            _switch = value;

                          });
                        },)

                      ),

                    ),
                  ),
                )
              ],
            ),
                

          ],

        ),
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Card(
                margin: EdgeInsets.only(bottom: 20) ,
                child: SizedBox(
                  width: 140,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Become_Partner()));
                    },style: ElevatedButton.styleFrom(shadowColor: Color(0xfff93527),primary: small),child: Text('Book Now',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 19),),
                  ),
                ),
              ),
            ),

      ]
    )
            )

    );
  }
}

