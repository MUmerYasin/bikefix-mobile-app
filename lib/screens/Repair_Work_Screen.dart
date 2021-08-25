import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Body_Work_Screen.dart';
import 'Engine_Work_Screen.dart';
import 'Repair_Work_Screen.dart';

class RepairWork extends StatefulWidget {
  const RepairWork({Key? key}) : super(key: key);

  @override
  _BodyWorkState createState() => _BodyWorkState();
}

class _BodyWorkState extends State<RepairWork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: NeumorphicColors.background,
        appBar: AppBar(
          elevation: 0,
          title: Text('Repair Work',style: TextStyle(color: Colors.black),),
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
                child:  Center(
                    child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: Neumorphic(
                                  style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                                  child: Container(
                                      width: 300,
                                      height: 295,
                                      child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 0.0,right: 5),
                                              child: ListTile(
                                                leading: Image.asset('image/brake.png',color: Colors.red,width: 36,),
                                                title: Text('Break Issue',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 18.0),
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
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 18.0,left: 18),
                                                  child: Text('When do we require this?',style: GoogleFonts.jacquesFrancois(fontWeight: FontWeight.w800,fontSize: 18),),
                                                )
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 15.0,top: 8),
                                                  child: Container(
                                                    width: 15,
                                                    height: 15,
                                                    child: Card(
                                                      shadowColor: Colors.redAccent,
                                                      elevation: 10,
                                                      color: Colors.redAccent,
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(30)
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 8.0, left: 8),
                                                  child: Text(" Squealing or rubbing noises"),
                                                )
                                              ],
                                            ),
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 15.0,top: 8),
                                                    child: Container(
                                                      width: 15,
                                                      height: 15,
                                                      child: Card(
                                                        shadowColor: Colors.redAccent,
                                                        elevation: 10,
                                                        color: Colors.redAccent,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(30)
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 8.0, left: 8),
                                                    child: Text(" Pulling to one side during breaking"),
                                                  )
                                                ]
                                            ),
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 15.0,top: 8),
                                                    child: Container(
                                                      width: 15,
                                                      height: 15,
                                                      child: Card(
                                                        shadowColor: Colors.redAccent,
                                                        elevation: 10,
                                                        color: Colors.redAccent,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(30)
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 8.0, left: 8),
                                                    child: Text(" Breaking power is reduced"),
                                                  )
                                                ]
                                            ),
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 15.0,top: 8),
                                                    child: Container(
                                                      width: 15,
                                                      height: 15,
                                                      child: Card(
                                                        shadowColor: Colors.redAccent,
                                                        elevation: 10,
                                                        color: Colors.redAccent,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(30)
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 8.0, left: 8),
                                                    child: Text(" Infecting parking break"),
                                                  )
                                                ]
                                            ),
                                            Row(
                                              children: [
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.only(left: 14.0,top: 17),
                                                      child: Text('Any other additional problem with be reported post vehicle inspection',style: TextStyle(color: Colors.orangeAccent,fontSize: 9,fontWeight: FontWeight.bold ),),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 18.0,top: 10),
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
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 14.0),
                                                  child: RichText(text: TextSpan(
                                                      children: <TextSpan>[
                                                        TextSpan(text: "  € 199",style: TextStyle(color: Colors.redAccent,fontSize: 17,fontWeight: FontWeight.bold)),
                                                        TextSpan(text: "    ( Inspection Charge)",style: TextStyle(color: Colors.black)),
                                                      ]
                                                  )),
                                                ),

                                                Padding(
                                                  padding: const EdgeInsets.only(left: 16.0,top: 15),
                                                  child: SizedBox(
                                                    width: 80,
                                                    height: 35,
                                                    child:  ElevatedButton(
                                                      onPressed: (){
                                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>EngineWork()));
                                                      },style: ElevatedButton.styleFrom(shadowColor: Color(0xfff93527),primary: Colors.red),child: Text('Add',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 19),),
                                                    ),
                                                  ),
                                                ),

                                              ],
                                            ),



                                          ]
                                      )
                                  )
                              )
                          ),Center(
                              child: Column(
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.only(top: 18.0),
                                        child: Neumorphic(
                                            style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                                            child: Container(
                                              margin: EdgeInsets.only(bottom: 20),
                                                width: 300,
                                                height: 225,
                                                child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 0.0,right: 5),
                                                        child: ListTile(
                                                          leading: Image.asset('image/clutch.png',color: Colors.red,width: 36,),
                                                          title: Text(' Clutch Issue',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 18.0),
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
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 18.0,left: 18),
                                                            child: Text('When do we require this?',style: GoogleFonts.jacquesFrancois(fontWeight: FontWeight.w800,fontSize: 18),),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 15.0,top: 8),
                                                            child: Container(
                                                              width: 15,
                                                              height: 15,
                                                              child: Card(
                                                                shadowColor: Colors.redAccent,
                                                                elevation: 10,
                                                                color: Colors.redAccent,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(30)
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 8.0, left: 8),
                                                            child: Text(" Cable breakage"),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 15.0,top: 8),
                                                            child: Container(
                                                              width: 15,
                                                              height: 15,
                                                              child: Card(
                                                                shadowColor: Colors.redAccent,
                                                                elevation: 10,
                                                                color: Colors.redAccent,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(30)
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 8.0, left: 8),
                                                            child: Text(" Cable rusting"),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsets.only(left: 14.0,top: 5),
                                                                child: Text('Any other additional problem with be reported post vehicle inspection',style: TextStyle(color: Colors.orangeAccent,fontSize: 9,fontWeight: FontWeight.bold ),),
                                                              )
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 18.0,top: 10),
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
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 14.0),
                                                            child: RichText(text: TextSpan(
                                                                children: <TextSpan>[
                                                                  TextSpan(text: "  € 199",style: TextStyle(color: Colors.redAccent,fontSize: 17,fontWeight: FontWeight.bold)),
                                                                  TextSpan(text: "    ( Inspection Charge)",style: TextStyle(color: Colors.black)),
                                                                ]
                                                            )),
                                                          ),

                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 16.0,top: 15),
                                                            child: SizedBox(
                                                              width: 80,
                                                              height: 35,
                                                              child:  ElevatedButton(
                                                                onPressed: (){
                                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EngineWork()));
                                                                },style: ElevatedButton.styleFrom(shadowColor: Color(0xfff93527),primary: Colors.red),child: Text('Add',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 19),),
                                                              ),
                                                            ),
                                                          ),

                                                        ],
                                                      )


                                                    ]
                                                )
                                            )
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(top: 18.0),
                                        child: Neumorphic(
                                            style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                                            child: Container(
                                                margin: EdgeInsets.only(bottom: 20),
                                                width: 300,
                                                height: 225,
                                                child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 0.0,right: 5),
                                                        child: ListTile(
                                                          leading:Padding(
                                                            padding: const EdgeInsets.all(8.0),
                                                            child: Image.asset('image/handle.png',color: Colors.red,width: 36,),
                                                          ),
                                                          title: Text(' Accelerator Issue',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 18.0),
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
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 18.0,left: 18),
                                                            child: Text('When do we require this?',style: GoogleFonts.jacquesFrancois(fontWeight: FontWeight.w800,fontSize: 18),),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 15.0,top: 8),
                                                            child: Container(
                                                              width: 15,
                                                              height: 15,
                                                              child: Card(
                                                                shadowColor: Colors.redAccent,
                                                                elevation: 10,
                                                                color: Colors.redAccent,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(30)
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 8.0, left: 8),
                                                            child: Text(" Cable breakage"),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 15.0,top: 8),
                                                            child: Container(
                                                              width: 15,
                                                              height: 15,
                                                              child: Card(
                                                                shadowColor: Colors.redAccent,
                                                                elevation: 10,
                                                                color: Colors.redAccent,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(30)
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 8.0, left: 8),
                                                            child: Text(" Cable rusting"),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsets.only(left: 14.0,top: 5),
                                                                child: Text('Any other additional problem with be reported post vehicle inspection',style: TextStyle(color: Colors.orangeAccent,fontSize: 9,fontWeight: FontWeight.bold ),),
                                                              )
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 18.0,top: 10),
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
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 14.0),
                                                            child: RichText(text: TextSpan(
                                                                children: <TextSpan>[
                                                                  TextSpan(text: "  € 199",style: TextStyle(color: Colors.redAccent,fontSize: 17,fontWeight: FontWeight.bold)),
                                                                  TextSpan(text: "    ( Inspection Charge)",style: TextStyle(color: Colors.black)),
                                                                ]
                                                            )),
                                                          ),

                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 16.0,top: 15),
                                                            child: SizedBox(
                                                              width: 80,
                                                              height: 35,
                                                              child:  ElevatedButton(
                                                                onPressed: (){
                                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EngineWork()));
                                                                },style: ElevatedButton.styleFrom(shadowColor: Color(0xfff93527),primary: Colors.red),child: Text('Add',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 19),),
                                                              ),
                                                            ),
                                                          ),

                                                        ],
                                                      )


                                                    ]
                                                )
                                            )
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(top: 18.0),
                                        child: Neumorphic(
                                            style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                                            child: Container(
                                                margin: EdgeInsets.only(bottom: 20),
                                                width: 300,
                                                height: 225,
                                                child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 0.0,right: 5),
                                                        child: ListTile(
                                                          leading: Padding(
                                                            padding: const EdgeInsets.all(8.0),
                                                            child: Image.asset('image/brake.png',color: Colors.red,width: 36,),
                                                          ),
                                                          title: Text(' Speedometer Issue',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 18.0),
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
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 18.0,left: 18),
                                                            child: Text('When do we require this?',style: GoogleFonts.jacquesFrancois(fontWeight: FontWeight.w800,fontSize: 18),),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 15.0,top: 8),
                                                            child: Container(
                                                              width: 15,
                                                              height: 15,
                                                              child: Card(
                                                                shadowColor: Colors.redAccent,
                                                                elevation: 10,
                                                                color: Colors.redAccent,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(30)
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 8.0, left: 8),
                                                            child: Text(" Cable breakage"),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 15.0,top: 8),
                                                            child: Container(
                                                              width: 15,
                                                              height: 15,
                                                              child: Card(
                                                                shadowColor: Colors.redAccent,
                                                                elevation: 10,
                                                                color: Colors.redAccent,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(30)
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 8.0, left: 8),
                                                            child: Text(" Cable rusting"),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsets.only(left: 14.0,top: 5),
                                                                child: Text('Any other additional problem with be reported post vehicle inspection',style: TextStyle(color: Colors.orangeAccent,fontSize: 9,fontWeight: FontWeight.bold ),),
                                                              )
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 18.0,top: 10),
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
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 14.0),
                                                            child: RichText(text: TextSpan(
                                                                children: <TextSpan>[
                                                                  TextSpan(text: "  € 199",style: TextStyle(color: Colors.redAccent,fontSize: 17,fontWeight: FontWeight.bold)),
                                                                  TextSpan(text: "    ( Inspection Charge)",style: TextStyle(color: Colors.black)),
                                                                ]
                                                            )),
                                                          ),

                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 16.0,top: 15),
                                                            child: SizedBox(
                                                              width: 80,
                                                              height: 35,
                                                              child:  ElevatedButton(
                                                                onPressed: (){
                                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EngineWork()));
                                                                },style: ElevatedButton.styleFrom(shadowColor: Color(0xfff93527),primary: Colors.red),child: Text('Add',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 19),),
                                                              ),
                                                            ),
                                                          ),

                                                        ],
                                                      )


                                                    ]
                                                )
                                            )
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(top: 18.0),
                                        child: Neumorphic(
                                            style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                                            child: Container(
                                                margin: EdgeInsets.only(bottom: 20),
                                                width: 300,
                                                height: 225,
                                                child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 0.0,right: 5),
                                                        child: ListTile(
                                                          leading: Image.asset('image/choke.png',color: Colors.red,width: 30,),
                                                          title: Text(' Choke Cable Problem',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 18.0),
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
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 18.0,left: 18),
                                                            child: Text('When do we require this?',style: GoogleFonts.jacquesFrancois(fontWeight: FontWeight.w800,fontSize: 18),),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 15.0,top: 8),
                                                            child: Container(
                                                              width: 15,
                                                              height: 15,
                                                              child: Card(
                                                                shadowColor: Colors.redAccent,
                                                                elevation: 10,
                                                                color: Colors.redAccent,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(30)
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 8.0, left: 8),
                                                            child: Text(" Cable breakage"),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 15.0,top: 8),
                                                            child: Container(
                                                              width: 15,
                                                              height: 15,
                                                              child: Card(
                                                                shadowColor: Colors.redAccent,
                                                                elevation: 10,
                                                                color: Colors.redAccent,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(30)
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 8.0, left: 8),
                                                            child: Text(" Cable rusting"),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsets.only(left: 14.0,top: 5),
                                                                child: Text('Any other additional problem with be reported post vehicle inspection',style: TextStyle(color: Colors.orangeAccent,fontSize: 9,fontWeight: FontWeight.bold ),),
                                                              )
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 18.0,top: 10),
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
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 14.0),
                                                            child: RichText(text: TextSpan(
                                                                children: <TextSpan>[
                                                                  TextSpan(text: "  € 199",style: TextStyle(color: Colors.redAccent,fontSize: 17,fontWeight: FontWeight.bold)),
                                                                  TextSpan(text: "    ( Inspection Charge)",style: TextStyle(color: Colors.black)),
                                                                ]
                                                            )),
                                                          ),

                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 16.0,top: 15),
                                                            child: SizedBox(
                                                              width: 80,
                                                              height: 35,
                                                              child:  ElevatedButton(
                                                                onPressed: (){
                                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EngineWork()));
                                                                },style: ElevatedButton.styleFrom(shadowColor: Color(0xfff93527),primary: Colors.red),child: Text('Add',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 19),),
                                                              ),
                                                            ),
                                                          ),

                                                        ],
                                                      )


                                                    ]
                                                )
                                            )
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(top: 18.0),
                                        child: Neumorphic(
                                            style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                                            child: Container(
                                                margin: EdgeInsets.only(bottom: 20),
                                                width: 300,
                                                height: 225,
                                                child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 0.0,right: 5),
                                                        child: ListTile(
                                                          leading: Icon(FontAwesomeIcons.motorcycle,color: Colors.redAccent,),
                                                          title: Text(' Lever Problem',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 18.0),
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
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 18.0,left: 18),
                                                            child: Text('When do we require this?',style: GoogleFonts.jacquesFrancois(fontWeight: FontWeight.w800,fontSize: 18),),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 15.0,top: 8),
                                                            child: Container(
                                                              width: 15,
                                                              height: 15,
                                                              child: Card(
                                                                shadowColor: Colors.redAccent,
                                                                elevation: 10,
                                                                color: Colors.redAccent,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(30)
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 8.0, left: 8),
                                                            child: Text(" Cable breakage"),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 15.0,top: 8),
                                                            child: Container(
                                                              width: 15,
                                                              height: 15,
                                                              child: Card(
                                                                shadowColor: Colors.redAccent,
                                                                elevation: 10,
                                                                color: Colors.redAccent,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(30)
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 8.0, left: 8),
                                                            child: Text(" Cable rusting"),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsets.only(left: 14.0,top: 5),
                                                                child: Text('Any other additional problem with be reported post vehicle inspection',style: TextStyle(color: Colors.orangeAccent,fontSize: 9,fontWeight: FontWeight.bold ),),
                                                              )
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 18.0,top: 10),
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
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 14.0),
                                                            child: RichText(text: TextSpan(
                                                                children: <TextSpan>[
                                                                  TextSpan(text: "  € 199",style: TextStyle(color: Colors.redAccent,fontSize: 17,fontWeight: FontWeight.bold)),
                                                                  TextSpan(text: "    ( Inspection Charge)",style: TextStyle(color: Colors.black)),
                                                                ]
                                                            )),
                                                          ),

                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 16.0,top: 15),
                                                            child: SizedBox(
                                                              width: 80,
                                                              height: 35,
                                                              child:  ElevatedButton(
                                                                onPressed: (){
                                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EngineWork()));
                                                                },style: ElevatedButton.styleFrom(shadowColor: Color(0xfff93527),primary: Colors.red),child: Text('Add',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 19),),
                                                              ),
                                                            ),
                                                          ),

                                                        ],
                                                      )


                                                    ]
                                                )
                                            )
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(top: 18.0),
                                        child: Neumorphic(
                                            style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                                            child: Container(
                                                margin: EdgeInsets.only(bottom: 20),
                                                width: 300,
                                                height: 225,
                                                child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 0.0,right: 5),
                                                        child: ListTile(
                                                          leading: Padding(
                                                            padding: const EdgeInsets.all(8.0),
                                                            child: Image.asset('image/handle.png',color: Colors.red,width: 36,),
                                                          ),
                                                          title: Text(' Switch Issue',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 18.0),
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
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 18.0,left: 18),
                                                            child: Text('When do we require this?',style: GoogleFonts.jacquesFrancois(fontWeight: FontWeight.w800,fontSize: 18),),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 15.0,top: 8),
                                                            child: Container(
                                                              width: 15,
                                                              height: 15,
                                                              child: Card(
                                                                shadowColor: Colors.redAccent,
                                                                elevation: 10,
                                                                color: Colors.redAccent,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(30)
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 8.0, left: 8),
                                                            child: Text(" Cable breakage"),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 15.0,top: 8),
                                                            child: Container(
                                                              width: 15,
                                                              height: 15,
                                                              child: Card(
                                                                shadowColor: Colors.redAccent,
                                                                elevation: 10,
                                                                color: Colors.redAccent,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(30)
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 8.0, left: 8),
                                                            child: Text(" Cable rusting"),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsets.only(left: 14.0,top: 5),
                                                                child: Text('Any other additional problem with be reported post vehicle inspection',style: TextStyle(color: Colors.orangeAccent,fontSize: 9,fontWeight: FontWeight.bold ),),
                                                              )
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 18.0,top: 10),
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
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 14.0),
                                                            child: RichText(text: TextSpan(
                                                                children: <TextSpan>[
                                                                  TextSpan(text: "  € 199",style: TextStyle(color: Colors.redAccent,fontSize: 17,fontWeight: FontWeight.bold)),
                                                                  TextSpan(text: "    ( Inspection Charge)",style: TextStyle(color: Colors.black)),
                                                                ]
                                                            )),
                                                          ),

                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 16.0,top: 15),
                                                            child: SizedBox(
                                                              width: 80,
                                                              height: 35,
                                                              child:  ElevatedButton(
                                                                onPressed: (){
                                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EngineWork()));
                                                                },style: ElevatedButton.styleFrom(shadowColor: Color(0xfff93527),primary: Colors.red),child: Text('Add',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 19),),
                                                              ),
                                                            ),
                                                          ),

                                                        ],
                                                      )


                                                    ]
                                                )
                                            )
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(top: 18.0),
                                        child: Neumorphic(
                                            style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                                            child: Container(
                                                margin: EdgeInsets.only(bottom: 20),
                                                width: 300,
                                                height: 225,
                                                child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 0.0,right: 5),
                                                        child: ListTile(
                                                          leading: Image.asset('image/wiring.png',color: Colors.red,width: 36,),
                                                          title: Text(' Wiring Issue',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 18.0),
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
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 18.0,left: 18),
                                                            child: Text('When do we require this?',style: GoogleFonts.jacquesFrancois(fontWeight: FontWeight.w800,fontSize: 18),),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 15.0,top: 8),
                                                            child: Container(
                                                              width: 15,
                                                              height: 15,
                                                              child: Card(
                                                                shadowColor: Colors.redAccent,
                                                                elevation: 10,
                                                                color: Colors.redAccent,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(30)
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 8.0, left: 8),
                                                            child: Text(" Any type od Sparkig"),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 15.0,top: 8),
                                                            child: Container(
                                                              width: 15,
                                                              height: 15,
                                                              child: Card(
                                                                shadowColor: Colors.redAccent,
                                                                elevation: 10,
                                                                color: Colors.redAccent,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(30)
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 8.0, left: 8),
                                                            child: Text(" Any wiring is damage"),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsets.only(left: 14.0,top: 5),
                                                                child: Text('Any other additional problem with be reported post vehicle inspection',style: TextStyle(color: Colors.orangeAccent,fontSize: 9,fontWeight: FontWeight.bold ),),
                                                              )
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 18.0,top: 10),
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
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 14.0),
                                                            child: RichText(text: TextSpan(
                                                                children: <TextSpan>[
                                                                  TextSpan(text: "  € 199",style: TextStyle(color: Colors.redAccent,fontSize: 17,fontWeight: FontWeight.bold)),
                                                                  TextSpan(text: "    ( Inspection Charge)",style: TextStyle(color: Colors.black)),
                                                                ]
                                                            )),
                                                          ),

                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 16.0,top: 15),
                                                            child: SizedBox(
                                                              width: 80,
                                                              height: 35,
                                                              child:  ElevatedButton(
                                                                onPressed: (){
                                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EngineWork()));
                                                                },style: ElevatedButton.styleFrom(shadowColor: Color(0xfff93527),primary: Colors.red),child: Text('Add',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 19),),
                                                              ),
                                                            ),
                                                          ),

                                                        ],
                                                      )


                                                    ]
                                                )
                                            )
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(top: 18.0),
                                        child: Neumorphic(
                                            style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                                            child: Container(
                                                margin: EdgeInsets.only(bottom: 20),
                                                width: 300,
                                                height: 225,
                                                child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 0.0,right: 5),
                                                        child: ListTile(
                                                          leading: Image.asset('image/head.png',color: Colors.red,width: 36,),
                                                          title: Text(' Magnet Issue',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 18.0),
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
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 18.0,left: 18),
                                                            child: Text('When do we require this?',style: GoogleFonts.jacquesFrancois(fontWeight: FontWeight.w800,fontSize: 18),),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 15.0,top: 8),
                                                            child: Container(
                                                              width: 15,
                                                              height: 15,
                                                              child: Card(
                                                                shadowColor: Colors.redAccent,
                                                                elevation: 10,
                                                                color: Colors.redAccent,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(30)
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 8.0, left: 8),
                                                            child: Text(" problem occur during starting the bike"),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 15.0,top: 8),
                                                            child: Container(
                                                              width: 15,
                                                              height: 15,
                                                              child: Card(
                                                                shadowColor: Colors.redAccent,
                                                                elevation: 10,
                                                                color: Colors.redAccent,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(30)
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 8.0, left: 8),
                                                            child: Text(" Ignition of fuel is not proper"),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsets.only(left: 14.0,top: 5),
                                                                child: Text('Any other additional problem with be reported post vehicle inspection',style: TextStyle(color: Colors.orangeAccent,fontSize: 9,fontWeight: FontWeight.bold ),),
                                                              )
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 18.0,top: 10),
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
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 14.0),
                                                            child: RichText(text: TextSpan(
                                                                children: <TextSpan>[
                                                                  TextSpan(text: "  € 199",style: TextStyle(color: Colors.redAccent,fontSize: 17,fontWeight: FontWeight.bold)),
                                                                  TextSpan(text: "    ( Inspection Charge)",style: TextStyle(color: Colors.black)),
                                                                ]
                                                            )),
                                                          ),

                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 16.0,top: 15),
                                                            child: SizedBox(
                                                              width: 80,
                                                              height: 35,
                                                              child:  ElevatedButton(
                                                                onPressed: (){
                                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EngineWork()));
                                                                },style: ElevatedButton.styleFrom(shadowColor: Color(0xfff93527),primary: Colors.red),child: Text('Add',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 19),),
                                                              ),
                                                            ),
                                                          ),

                                                        ],
                                                      )


                                                    ]
                                                )
                                            )
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(top: 18.0),
                                        child: Neumorphic(
                                            style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                                            child: Container(
                                                margin: EdgeInsets.only(bottom: 20),
                                                width: 300,
                                                height: 225,
                                                child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 0.0,right: 5),
                                                        child: ListTile(
                                                          leading: Image.asset('image/battery.png',color: Colors.red,width: 36,),
                                                          title: Text(' Battery Issue',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 18.0),
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
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 18.0,left: 18),
                                                            child: Text('When do we require this?',style: GoogleFonts.jacquesFrancois(fontWeight: FontWeight.w800,fontSize: 18),),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 15.0,top: 8),
                                                            child: Container(
                                                              width: 15,
                                                              height: 15,
                                                              child: Card(
                                                                shadowColor: Colors.redAccent,
                                                                elevation: 10,
                                                                color: Colors.redAccent,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(30)
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 8.0, left: 8),
                                                            child: Text(" Battery get discharged very quickly"),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 15.0,top: 8),
                                                            child: Container(
                                                              width: 15,
                                                              height: 15,
                                                              child: Card(
                                                                shadowColor: Colors.redAccent,
                                                                elevation: 10,
                                                                color: Colors.redAccent,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(30)
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 8.0, left: 8),
                                                            child: Text(" Battery stops working properly "),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsets.only(left: 14.0,top: 5),
                                                                child: Text('Any other additional problem with be reported post vehicle inspection',style: TextStyle(color: Colors.orangeAccent,fontSize: 9,fontWeight: FontWeight.bold ),),
                                                              )
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 18.0,top: 10),
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
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 14.0),
                                                            child: RichText(text: TextSpan(
                                                                children: <TextSpan>[
                                                                  TextSpan(text: "  € 199",style: TextStyle(color: Colors.redAccent,fontSize: 17,fontWeight: FontWeight.bold)),
                                                                  TextSpan(text: "    ( Inspection Charge)",style: TextStyle(color: Colors.black)),
                                                                ]
                                                            )),
                                                          ),

                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 16.0,top: 15),
                                                            child: SizedBox(
                                                              width: 80,
                                                              height: 35,
                                                              child:  ElevatedButton(
                                                                onPressed: (){
                                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EngineWork()));
                                                                },style: ElevatedButton.styleFrom(shadowColor: Color(0xfff93527),primary: Colors.red),child: Text('Add',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 19),),
                                                              ),
                                                            ),
                                                          ),

                                                        ],
                                                      )


                                                    ]
                                                )
                                            )
                                        )
                                    ),

                                    Padding(
                                        padding: const EdgeInsets.only(top: 18.0),
                                        child: Neumorphic(
                                            style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                                            child: Container(
                                                margin: EdgeInsets.only(bottom: 20),
                                                width: 300,
                                                height: 225,
                                                child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 0.0,right: 5),
                                                        child: ListTile(
                                                          leading: Padding(
                                                            padding: const EdgeInsets.all(8.0),
                                                            child: Image.asset('image/fuse.png',color: Colors.red,width: 36,),
                                                          ),
                                                          title: Text(' Fuse Issue',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 18.0),
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
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 18.0,left: 18),
                                                            child: Text('When do we require this?',style: GoogleFonts.jacquesFrancois(fontWeight: FontWeight.w800,fontSize: 18),),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 15.0,top: 8),
                                                            child: Container(
                                                              width: 15,
                                                              height: 15,
                                                              child: Card(
                                                                shadowColor: Colors.redAccent,
                                                                elevation: 10,
                                                                color: Colors.redAccent,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(30)
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 8.0, left: 8),
                                                            child: Text(" Electric circuit is not working properly"),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 15.0,top: 8),
                                                            child: Container(
                                                              width: 15,
                                                              height: 15,
                                                              child: Card(
                                                                shadowColor: Colors.redAccent,
                                                                elevation: 10,
                                                                color: Colors.redAccent,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(30)
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 8.0, left: 8),
                                                            child: Text(" Fused is burned"),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsets.only(left: 14.0,top: 5),
                                                                child: Text('Any other additional problem with be reported post vehicle inspection',style: TextStyle(color: Colors.orangeAccent,fontSize: 9,fontWeight: FontWeight.bold ),),
                                                              )
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 18.0,top: 10),
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
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 14.0),
                                                            child: RichText(text: TextSpan(
                                                                children: <TextSpan>[
                                                                  TextSpan(text: "  € 199",style: TextStyle(color: Colors.redAccent,fontSize: 17,fontWeight: FontWeight.bold)),
                                                                  TextSpan(text: "    ( Inspection Charge)",style: TextStyle(color: Colors.black)),
                                                                ]
                                                            )),
                                                          ),

                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 16.0,top: 15),
                                                            child: SizedBox(
                                                              width: 80,
                                                              height: 35,
                                                              child:  ElevatedButton(
                                                                onPressed: (){
                                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EngineWork()));
                                                                },style: ElevatedButton.styleFrom(shadowColor: Color(0xfff93527),primary: Colors.red),child: Text('Add',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 19),),
                                                              ),
                                                            ),
                                                          ),

                                                        ],
                                                      )


                                                    ]
                                                )
                                            )
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(top: 18.0),
                                        child: Neumorphic(
                                            style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                                            child: Container(
                                                margin: EdgeInsets.only(bottom: 20),
                                                width: 300,
                                                height: 225,
                                                child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 0.0,right: 5),
                                                        child: ListTile(
                                                          leading: Image.asset('image/spark.png',color: Colors.red,width: 30,),
                                                          title: Text(' Spark Problem',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 18.0),
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
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 18.0,left: 18),
                                                            child: Text('When do we require this?',style: GoogleFonts.jacquesFrancois(fontWeight: FontWeight.w800,fontSize: 18),),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 15.0,top: 8),
                                                            child: Container(
                                                              width: 15,
                                                              height: 15,
                                                              child: Card(
                                                                shadowColor: Colors.redAccent,
                                                                elevation: 10,
                                                                color: Colors.redAccent,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(30)
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 8.0, left: 8),
                                                            child: Text(" Cable breakage"),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 15.0,top: 8),
                                                            child: Container(
                                                              width: 15,
                                                              height: 15,
                                                              child: Card(
                                                                shadowColor: Colors.redAccent,
                                                                elevation: 10,
                                                                color: Colors.redAccent,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(30)
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 8.0, left: 8),
                                                            child: Text(" Cable rusting"),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsets.only(left: 14.0,top: 5),
                                                                child: Text('Any other additional problem with be reported post vehicle inspection',style: TextStyle(color: Colors.orangeAccent,fontSize: 9,fontWeight: FontWeight.bold ),),
                                                              )
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 18.0,top: 10),
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
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 14.0),
                                                            child: RichText(text: TextSpan(
                                                                children: <TextSpan>[
                                                                  TextSpan(text: "  € 199",style: TextStyle(color: Colors.redAccent,fontSize: 17,fontWeight: FontWeight.bold)),
                                                                  TextSpan(text: "    ( Inspection Charge)",style: TextStyle(color: Colors.black)),
                                                                ]
                                                            )),
                                                          ),

                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 16.0,top: 15),
                                                            child: SizedBox(
                                                              width: 80,
                                                              height: 35,
                                                              child:  ElevatedButton(
                                                                onPressed: (){
                                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EngineWork()));
                                                                },style: ElevatedButton.styleFrom(shadowColor: Color(0xfff93527),primary: Colors.red),child: Text('Add',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 19),),
                                                              ),
                                                            ),
                                                          ),

                                                        ],
                                                      )


                                                    ]
                                                )
                                            )
                                        )
                                    )

                                  ]
                              ))

                        ]
                    ))))
    );
  }
}

