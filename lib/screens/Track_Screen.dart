import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'General_Service_Screen.dart';
import 'Payment_Success.dart';

class Track_Order_Screen extends StatefulWidget {
  const Track_Order_Screen({Key? key}) : super(key: key);

  @override
  _Track_Order_ScreenState createState() => _Track_Order_ScreenState();
}

class _Track_Order_ScreenState extends State<Track_Order_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicColors.background,
      appBar: AppBar(
        elevation: 0,
        title: Text('Track Order',style: TextStyle(color: Colors.black),),
        backgroundColor: NeumorphicColors.background,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
                children: [
            Padding(
            padding: const EdgeInsets.only(top: 38.0),
            child: Neumorphic(
              style: NeumorphicStyle(
                  shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white
              ),
              child: Container(
                width: 300,
                height: 180,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Order ID"),
                      trailing: Text('645238',style: TextStyle(fontWeight: FontWeight.w700),),
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(
                          shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black),
                      child: Container(
                        width: 240,
                        height: 3,
                        color: Colors.white,
                      ),
                    ),
                    ListTile(
                      title: Text("Service Center"),
                      trailing: Text("Bikefixup Workshop #1",style: TextStyle(fontWeight: FontWeight.w700),)
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(
                          shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black),
                      child: Container(
                        width: 240,
                        height: 3,
                        color: Colors.white,
                      ),
                    ),
                    ListTile(
                        title: Text("Require Pickup",style: TextStyle(fontWeight: FontWeight.w700),),
                        trailing: Icon(FontAwesomeIcons.check,color: Colors.green,)
                    ),
                  ],
                )
              ),
            ),
          ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 45.0,top: 24),
                        child: Text('Track Details',style: TextStyle(fontSize: 19),),
                      )

                    ],
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Neumorphic(
                      style: NeumorphicStyle(
                          shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                      child: Container(
                        width: 300,
                        height: 340,
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 13.0,top: 8),
                                  child: Text("3:10pm \n 05/04/2021",style: TextStyle(fontWeight: FontWeight.bold),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 38.0,top: 17),
                                  child: Text("Your Order has been received",style: TextStyle(fontWeight: FontWeight.w500),),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Neumorphic(
                                style: NeumorphicStyle(
                                    shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black),
                                child: Container(
                                  width: 240,
                                  height: 3,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(left: 116.0,top: 14),
                                  child: Text("Your Order has been confirmed",style: TextStyle(fontWeight: FontWeight.w500),),
                                ),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Neumorphic(
                                style: NeumorphicStyle(
                                    shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black),
                                child: Container(
                                  width: 240,
                                  height: 3,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 116.0,top: 13),
                                  child: Text("We are on the way to pickup your  \n vehicles",style: TextStyle(fontWeight: FontWeight.w500),),
                                ),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Neumorphic(
                                style: NeumorphicStyle(
                                    shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                                child: Container(
                                  width: 240,
                                  height: 3,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(left: 116.0,top: 13),
                                  child: Text("Vehicle Picked up",style: TextStyle(fontWeight: FontWeight.w500),),
                                ),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Neumorphic(
                                style: NeumorphicStyle(
                                    shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black),
                                child: Container(
                                  width: 240,
                                  height: 3,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(left: 116.0,top: 13),
                                  child: Text("Vehicle servicing in progress",style: TextStyle(fontWeight: FontWeight.w500),),
                                ),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Neumorphic(
                                style: NeumorphicStyle(
                                    shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black),
                                child: Container(
                                  width: 240,
                                  height: 3,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(left: 116.0,top: 13),
                                  child: Text("Servicing of your Vehicle in \n complete",style: TextStyle(fontWeight: FontWeight.w500),),
                                ),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Neumorphic(
                                style: NeumorphicStyle(
                                    shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black),
                                child: Container(
                                  width: 240,
                                  height: 3,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(left: 116.0,top: 13),
                                  child: Text("Vehicle dropped",style: TextStyle(fontWeight: FontWeight.w500),),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Neumorphic(
                                style: NeumorphicStyle(
                                    shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black),
                                child: Container(
                                  width: 240,
                                  height: 3,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(left: 116.0,top: 13),
                                  child: Text("Thanks for Visiting",style: TextStyle(fontWeight: FontWeight.w500),),
                                ),
                              ],
                            ),

                          ],
                        )
                      ),
                    ),
                  ),
                  Center(
                    child:  Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Card(
                        margin: EdgeInsets.only(bottom: 20),
                        elevation: 20,
                        shadowColor: Color(0xfff93527),
                        child: SizedBox(
                          width: 140,
                          height: 55,
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>General_Service()));
                            },style: ElevatedButton.styleFrom(shadowColor: Color(0xfff93527),primary: Colors.red),child: Text('Proceed'),
                          ),
                        ),
                      ),
                    ),
                  ),

      ]
    )

    )   
        )
    )
    );
  }
}
