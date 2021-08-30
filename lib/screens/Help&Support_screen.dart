import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:two_wheel_vehicle/config.dart';
import 'package:two_wheel_vehicle/widgets.dart';

class help extends StatefulWidget {
  const help({Key? key}) : super(key: key);

  @override
  _helpState createState() => _helpState();
}

class _helpState extends State<help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicColors.background,
      appBar: AppBar(
        elevation: 0,
        title: Text('Help & Support',style: GoogleFonts.jacquesFrancois(color: Colors.black,fontSize: 17),),
        centerTitle: true,
        backgroundColor: NeumorphicColors.background,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Neumorphic(
                  style: NeumorphicStyle(shadowDarkColor: Colors.black26,shadowDarkColorEmboss:
                  Colors.black,shadowLightColorEmboss: Colors.black26,
                      shadowLightColor: Colors.white,lightSource: LightSource.topLeft,color: Color(0xffe7eaf1)),
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: MediaQuery.of(context).size.height/3.4,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset('assets/icons/call_photo.png'),
                              Padding(
                                padding: const EdgeInsets.only(left: 22.0),
                                child: Text('966 325 4568',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Neumorphic(
                            style: NeumorphicStyle(depth: -19,shadowLightColor: Colors.black26,shadowLightColorEmboss:
                            Colors.white,shadowDarkColorEmboss: Colors.black26,shadowDarkColor: Colors.white,color: Colors.white),
                            child: Divider(
                              thickness: 5,
                              height: 5,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(

                            children: [
                              Image.asset('assets/icons/mailing.png'),
                              Padding(
                                padding: const EdgeInsets.only(left: 22.0),
                                child: Text('example@mail.com',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                              ),
                              
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Neumorphic(
                            style: NeumorphicStyle(depth: -19,shadowLightColor: Colors.black26,shadowLightColorEmboss:
                            Colors.white,shadowDarkColorEmboss: Colors.black26,shadowDarkColor: Colors.white,color: Colors.white),
                            child: Divider(
                              thickness: 5,
                              height: 5,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Wigets(image: 'assets/icons/what.png',),
                              Wigets(image: 'assets/icons/facebook.png'),
                              Wigets(image: 'assets/icons/instagram.png'),


                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Text('Timing 10am - 7pm',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 38.0),
                    child: Neumorphic(
                      style: NeumorphicStyle(shadowDarkColor: Colors.black26,shadowDarkColorEmboss:
                      Colors.black,shadowLightColorEmboss: Colors.black26,
                          shadowLightColor: Colors.white,lightSource: LightSource.topLeft,color: Color(0xffeaebf2)),
                      child: Container(
                        width: MediaQuery.of(context).size.width/1.2,
                        height: MediaQuery.of(context).size.height/6.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(Term,style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500),),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('APP version : 1.0.1',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),



    );
  }
}
