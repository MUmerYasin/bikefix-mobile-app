import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:two_wheel_vehicle/config.dart';

import 'Body_Work_Screen.dart';
import 'Track_Screen.dart';

class General_Service extends StatefulWidget {
  const General_Service({Key? key}) : super(key: key);

  @override
  _General_ServiceState createState() => _General_ServiceState();
}

class _General_ServiceState extends State<General_Service> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicColors.background,
      appBar: AppBar(
        elevation: 0,
        title: Text('General Service',style: TextStyle(color: Colors.black),),
        backgroundColor: NeumorphicColors.background,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,),
        ),
        centerTitle: true,
      ),
      body:
          CustomContainer()


);


  }
}

class CustomContainer extends StatefulWidget {
  const CustomContainer({Key? key,  }) : super(key: key);


  @override
  _CustomContainerState createState() => _CustomContainerState();
}

    class _CustomContainerState extends State<CustomContainer> {
      @override
      Widget build(BuildContext context) {
        return SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Neumorphic(
                      style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black45 , shadowDarkColor: Colors.black45 ,shadowLightColor: Colors.white),
                      child: Container(
                        width: 300,
                        height: 470,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 13.0),
                              child: ListTile(
                                leading: Image.asset('assets/icons/setting.png',color: Colors.red,width: 30,),
                                title: Text('General Service',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
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
                                  child: Text('What services we provide?',style: GoogleFonts.jacquesFrancois(fontWeight: FontWeight.w800,fontSize: 18),),
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
                                      elevation: 4,
                                      color: Color(0xffe34d3d ,),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30)
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0, left: 8),
                                  child: Text(" Engine Oil"),
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
                                      elevation: 4,
                                      color: Color(0xffe34d3d),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30)
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0,top: 8),
                                  child: Text(" Air Filter"),
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
                                      elevation: 4,
                                      color: Color(0xffe34d3d ,),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30)
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0,top: 8),
                                  child: Text(" Chain Spray"),
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
                                      elevation: 4,
                                      color: Color(0xffe34d3d ,),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30)
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0,top: 8),
                                  child: Text(" Noise Check"),
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
                                      elevation: 4,
                                      color: Color(0xffe34d3d ,),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30)
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0,top: 8),
                                  child: Text(" Type Pressure Check"),
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
                                      elevation: 4,
                                      color: Color(0xffe34d3d ,),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30)
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0,top: 8),
                                  child: Text(" Break Shoe Check"),
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
                                      elevation: 4,
                                      color: Color(0xffe34d3d ,),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30)
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0,top: 8),
                                  child: Text(" Clutch check"),
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
                                      elevation: 4,
                                      color: Color(0xffe34d3d ,),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30)
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0,top: 8),
                                  child: Text(" Accelerator Check"),
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
                                      elevation: 4,
                                      color: Color(0xffe34d3d ,),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30)
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0,top: 8),
                                  child: Text(" Washing"),
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
                                      elevation: 4,
                                      color: Color(0xffe34d3d ,),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30)
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0,top: 8),
                                  child: Text(" Polish"),
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
                                      elevation: 4,
                                      color: Color(0xffe34d3d ,),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30)
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0,top: 8),
                                  child: Text(" Labour Charge"),
                                )
                              ],
                            ),
                             Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 14.0,top: 17),
                                    child: Text('Any other additional problem with be reported post vehicle inspection',style: TextStyle(color: Colors.orangeAccent,fontSize: 9,fontWeight: FontWeight.bold ),),
                                  )
                                ],
                              ),
                            Padding(
                              padding: const EdgeInsets.only(top:
                                  14.0,right: 18),
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
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>BodyWork()));
                                          },style: ElevatedButton.styleFrom(shadowColor: Color(0xfff93527),primary: small),child: Text('Add',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 19),),
                                        ),
                                        ),
                                    ),

                                  ],
                                )
                              ],
                            )


                            )

                        ),

                      ),

                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Neumorphic(
                      margin: EdgeInsets.only(bottom: 10),
                        style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black45 , shadowDarkColor: Colors.black45 ,shadowLightColor: Colors.white),
                        child: Container(
                            width: 300,
                            height: 305,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 13.0),
                                  child: ListTile(
                                    leading: Image.asset('image/heavy.png',color: Colors.red,width: 42,),
                                    title: Text('Special Request',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
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
                                      child: Text('What services we provide?',style: GoogleFonts.jacquesFrancois(fontWeight: FontWeight.w800,fontSize: 18),),
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
                                          elevation: 4,
                                          color: Color(0xffe34d3d ,),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(30)
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0, left: 8),
                                      child: Text(" Stand by for a long gap"),
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
                                          elevation: 4,
                                          color: Color(0xffe34d3d),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(30)
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0,top: 8),
                                      child: Text(" Battery not working"),
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
                                          elevation: 4,
                                          color: Color(0xffe34d3d ,),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(30)
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0,top: 8),
                                      child: Text(" Mechanical problem"),
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
                                          elevation: 4,
                                          color: Color(0xffe34d3d ,),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(30)
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0,top: 8),
                                      child: Text(" Electric problem"),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 14.0,top: 17),
                                      child: Text('Any other additional problem with be reported post vehicle inspection',style: TextStyle(color: Colors.orangeAccent,fontSize: 9,fontWeight: FontWeight.bold ),),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:
                                  14.0,right: 18),
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
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>BodyWork()));
                                          },style: ElevatedButton.styleFrom(shadowColor: Color(0xfff93527),primary: small),child: Text('Add',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 19),),
                                        ),
                                      ),
                                    ),

                                  ],
                                )
                              ],
                            )


                        )

                    ),

                  ),
                ],
              ),
            )
        );
      }
    }





