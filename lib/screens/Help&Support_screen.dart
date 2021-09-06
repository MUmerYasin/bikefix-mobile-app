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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Neumorphic(
                    margin: EdgeInsets.all(15),
                    style: NeumorphicStyle(shadowDarkColor: Colors.black26,shadowDarkColorEmboss:
                    Colors.black,shadowLightColorEmboss: Colors.black,
                        shadowLightColor: Colors.black,lightSource: LightSource.bottomRight,color: NeumorphicColors.background),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0,left: 20),
                            child: Row(
                              children: [
                                Image.asset('assets/icons/call_photo.png'),
                                Padding(
                                  padding: const EdgeInsets.only(left: 22.0),
                                  child: Text('966 325 4568',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                                )
                              ],
                            ),
                          ),

                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: shape(),
                         ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0,left: 20),
                            child: Row(

                              children: [
                                Image.asset('assets/icons/mailing.png'),
                                Padding(
                                  padding: const EdgeInsets.only(left: 22.0),
                                  child: Text('example@mail.com',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                ),
                                
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: shape(),
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

                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: Text('Timing 10am - 7pm',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height/6,
                        child: Neumorphic(
                          margin: EdgeInsets.all(15),
                          style: NeumorphicStyle(shadowDarkColor: Colors.black26,shadowDarkColorEmboss:
                          Colors.black,shadowLightColorEmboss: Colors.black,
                              shadowLightColor: Colors.black,lightSource: LightSource.bottomRight,color: NeumorphicColors.background),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(Term,style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 12.0),
                                    child: Text('APP version : 1.0.1',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
                                  ),
                                )
                              ],
                            ),
                          ),
                      ),
                      ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),



    );
  }
}
