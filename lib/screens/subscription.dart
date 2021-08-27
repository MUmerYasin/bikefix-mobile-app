import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'CheckOut_Screen.dart';

class subscrip extends StatefulWidget {
  const subscrip({Key? key}) : super(key: key);

  @override
  _subscripState createState() => _subscripState();
}

class _subscripState extends State<subscrip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicColors.background,
      appBar: AppBar(
        actions: [
          Text('')
        ],

        elevation: 0,
        title: Text('',style: TextStyle(color: Colors.black),),
        backgroundColor: NeumorphicColors.background,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Neumorphic(

                      margin: EdgeInsets.only(bottom: 20),
                      style: NeumorphicStyle(depth:6,shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.white , shadowDarkColor: Colors.black54,shadowLightColor: Colors.white),
                      child: Container(
                        width: 310,
                        height: MediaQuery.of(context).size.height/1.5,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/icons/king.png',scale: 40,),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('SUBSCRIPTION',style: TextStyle(fontSize: 27,fontWeight: FontWeight.w600,color: Colors.red),),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 28.0),
                              child: Text('3 Pickup and drop free',style: TextStyle(fontSize: 15),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 14.0),
                              child: Neumorphic(
                                style: NeumorphicStyle(depth: -10,shadowDarkColor: Colors.white,shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black38,shadowLightColor: Colors.white),
                                child: Container(
                                  width: 300,
                                  height: 5,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Text('10% discount (upto 200 on each invoice)',style: TextStyle(fontSize: 15),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: Neumorphic(
                                style: NeumorphicStyle(depth: -10,shadowDarkColor: Colors.white,shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black38,shadowLightColor: Colors.white),
                                child: Container(
                                  width: 300,
                                  height: 5,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Text('Free consultation',style: TextStyle(fontSize: 17),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Neumorphic(
                                style: NeumorphicStyle(depth: -10,shadowDarkColor: Colors.white,shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black38,shadowLightColor: Colors.white),
                                child: Container(
                                  width: 300,
                                  height: 5,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Text('7 Days after service warranty',style: TextStyle(fontSize: 17),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Neumorphic(
                                style: NeumorphicStyle(depth: -10,shadowDarkColor: Colors.white,shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black38,shadowLightColor: Colors.white),
                                child: Container(
                                  width: 300,
                                  height: 5,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Text('Priority customer support',style: TextStyle(fontSize: 17),),
                            ),


                            Padding(
                              padding: const EdgeInsets.only(top: 14.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  PhysicalModel(
                                    elevation: 6,
                                    color: Colors.red,
                                    shadowColor: Colors.red,
                                    shape: BoxShape.circle,
                                    child: Container(
                                      width: 70,
                                      decoration: BoxDecoration(

                                      ),
                                      height: 75,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('₹499',style: TextStyle(color: Colors.white,fontSize: 22),)
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('/ 6 Month',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                                  )
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: SizedBox(
                                height: 50,
                                child:  Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: ElevatedButton(
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckOut()));
                                    },style: ElevatedButton.styleFrom(primary: Colors.black),child: Text(' Buy now',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 19),),
                                  ),
                                ),
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


