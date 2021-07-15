import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/screens/add_vehicle_screen.dart';
import 'package:two_wheel_vehicle/screens/navigator_helper.dart';

import '../config.dart';

class MyVehicles extends StatefulWidget {
  @override
  _MyVehiclesState createState() => _MyVehiclesState();
}

class _MyVehiclesState extends State<MyVehicles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: backgroundColor,
          // leading: Image.asset('assets/icons/back_icon.png',fit: BoxFit.fill,),
          leading: Icon(Icons.arrow_back_ios),
          title: Text(
            'My Vehicle',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 18,
              color: const Color(0xff000000),
            ),
            textAlign: TextAlign.left,
          ),
          centerTitle: true,
        ),
        body: Container(
            padding: EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Add',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        InkWell(onTap: (){gotoScreen(context: context,screen: AddVehicleScreen());},child: Neumorphic(
                        style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black), child: Icon(Icons.add_circle, color: Color(0xffEEF0F5)))),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0,bottom: 10.0),
                    child: Neumorphic(
                      style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black),    child: Container(
                        width: 320.0,
                        height: 100.0,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          gradient: LinearGradient(
                            begin: Alignment(-1.0, -1.0),
                            end: Alignment(1.01, 1.0),
                            colors: [
                              const Color(0xffeef0f5),
                              const Color(0xffe6e9ef)
                            ],
                            stops: [0.0, 1.0],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xb2a6b4c8),
                              offset: Offset(10, 10),
                              blurRadius: 48,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.circle, color: buttonColor),
                            Image.asset('assets/icons/bike_image.png'),
                            Text.rich(
                              TextSpan(
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  color: const Color(0xff000000),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'KTM\n',
                                  ),
                                  TextSpan(
                                    text: '200 Duke',
                                    style: TextStyle(
                                      color: const Color(0xffd33937),
                                    ),
                                  ),
                                ],
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0,bottom: 10.0),
                    child: Neumorphic(
                      style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black),    child: Container(
                        width: 320.0,
                        height: 100.0,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          gradient: LinearGradient(
                            begin: Alignment(-1.0, -1.0),
                            end: Alignment(1.01, 1.0),
                            colors: [
                              const Color(0xffeef0f5),
                              const Color(0xffe6e9ef)
                            ],
                            stops: [0.0, 1.0],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xb2a6b4c8),
                              offset: Offset(10, 10),
                              blurRadius: 48,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.radio_button_unchecked, color: Colors.black),
                            Image.asset('assets/icons/bike_image.png'),
                            Text.rich(
                              TextSpan(
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  color: const Color(0xff000000),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'KTM\n',
                                  ),
                                  TextSpan(
                                    text: '200 Duke',
                                    style: TextStyle(
                                      color: const Color(0xffd33937),
                                    ),
                                  ),
                                ],
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0,bottom: 10.0),
                    child: Neumorphic(
                      style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black),                      child: Container(
                        width: 320.0,
                        height: 100.0,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          gradient: LinearGradient(
                            begin: Alignment(-1.0, -1.0),
                            end: Alignment(1.01, 1.0),
                            colors: [
                              const Color(0xffeef0f5),
                              const Color(0xffe6e9ef)
                            ],
                            stops: [0.0, 1.0],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xb2a6b4c8),
                              offset: Offset(10, 10),
                              blurRadius: 48,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.radio_button_unchecked, color: Colors.black),
                            Image.asset('assets/icons/bike_image.png'),
                            Text.rich(
                              TextSpan(
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  color: const Color(0xff000000),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'KTM\n',
                                  ),
                                  TextSpan(
                                    text: '200 Duke',
                                    style: TextStyle(
                                      color: const Color(0xffd33937),
                                    ),
                                  ),
                                ],
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ])));
  }
}
