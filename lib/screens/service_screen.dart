import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:two_wheel_vehicle/config.dart';
import 'package:two_wheel_vehicle/widgets.dart';

class ServiceStatus extends StatefulWidget {
  const ServiceStatus({Key? key}) : super(key: key);

  @override
  _ServiceStatusState createState() => _ServiceStatusState();
}

class _ServiceStatusState extends State<ServiceStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicColors.background,
      appBar: AppBar(
        backgroundColor: NeumorphicColors.background,
        leading: Icon(CupertinoIcons.back),
        elevation: 0,
        centerTitle: true,
        title: Text('Service Status',style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Neumorphic(
                  style:  NeumorphicStyle(lightSource: LightSource.topLeft,depth:4,oppositeShadowLightSource: true,
                        shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black45, shape: NeumorphicShape.flat,
                        shadowDarkColor: Colors.white ,shadowLightColor: Colors.black,border: NeumorphicBorder(color: Colors.white)),

                    child: Container(
                      width: MediaQuery.of(context).size.width/1.1,
                      height: MediaQuery.of(context).size.height/6,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 28.0),
                                child: RichText(text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(text: '     KTM',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w500)),
                                    TextSpan(text: '\n 200 Duke',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.red,fontSize: 20))
                                  ]
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 28.0),
                                child: Image.asset('assets/icons/bike_image.png'),
                              )
                            ],
                          )
                        ],
                      ),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 28.0,top: 20),
                  child: Row(
                    children: [
                      Text('Order Details',textAlign:TextAlign.left,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 28.0,left: 10,right: 10),
                  child: Neumorphic(
                    style: NeumorphicStyle(lightSource: LightSource.topLeft,depth:4,oppositeShadowLightSource: true,
                        shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black45, shape: NeumorphicShape.flat,
                        shadowDarkColor: Colors.white ,shadowLightColor: Colors.black,border: NeumorphicBorder(color: Colors.white)),
                    child: Container(
                      width:  MediaQuery.of(context).size.width/1.1,
                      height: MediaQuery.of(context).size.height/3,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 25.0,top: 10),
                                child: Text(booking,style: TextStyle(fontSize: 17),),
                              ),
                            ],
                          ),
                          
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Neumorphic(
                                style:NeumorphicStyle(depth: -14,color: Colors.white),child: Divider(
                              height: 5,

                            )),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 25.0,top: 10),
                                child: Text(pickup,style: TextStyle(fontSize: 17),),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Neumorphic(
                                style:NeumorphicStyle(depth: -14,color: Colors.white),child: Divider(
                              height: 5,

                            )),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 25.0,top: 10),
                                child: Text(Delivery,style: TextStyle(fontSize: 17),),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Neumorphic(
                                style:NeumorphicStyle(depth: -14,color: Colors.white),child: Divider(
                              height: 5,

                            )),
                          ),
                            Row(

                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 25.0,top: 11),
                                  child: Text('Price: ₹ 2,500',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                )
                              ],
                            )

                        ],
                      ),
                    ),
                  ),
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 28.0,top: 20),
                      child: SizedBox(
                        height: 55,
                        child: ElevatedButton(onPressed: (){

                        },style: ElevatedButton.styleFrom(primary: Colors.red),child:
                        Text('Feedback',style: GoogleFonts.jacquesFrancois(fontSize: 22,fontWeight: FontWeight.bold),),),
                      ),
                    )
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
