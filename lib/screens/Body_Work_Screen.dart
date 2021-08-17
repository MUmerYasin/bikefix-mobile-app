import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Repair_Work_Screen.dart';

class BodyWork extends StatefulWidget {
  const BodyWork({Key? key}) : super(key: key);

  @override
  _BodyWorkState createState() => _BodyWorkState();
}

class _BodyWorkState extends State<BodyWork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicColors.background,
      appBar: AppBar(
        elevation: 0,
        title: Text('Body Work',style: TextStyle(color: Colors.black),),
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
              height: 260,
              child: Column(
                  children: [
              Padding(
              padding: const EdgeInsets.only(left: 0.0,right: 5),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.chair,color: Colors.redAccent,),
                title: Text('Center Stand Replacement',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
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
                  child: Text(" For parking the bike in a paper manner"),
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
                    child: Text(" If center stand get broken"),
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>RepairWork()));
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
                                width: 300,
                                height: 230,
                                child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0.0,right: 5),
                                        child: ListTile(
                                          leading: Icon(FontAwesomeIcons.biking,color: Colors.redAccent,),
                                          title: Text('Slide Stand Replacement',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
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
                                            child: Text(" For parking without learning against another \n object or the aid of a person"),
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
                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>RepairWork()));
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

