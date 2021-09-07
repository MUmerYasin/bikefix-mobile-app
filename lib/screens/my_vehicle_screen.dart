import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/screens/add_vehicle_screen.dart';
import 'package:two_wheel_vehicle/screens/navigator_helper.dart';
import 'package:two_wheel_vehicle/widgets.dart';

import '../config.dart';

class MyVehicles extends StatefulWidget {
  @override
  _MyVehiclesState createState() => _MyVehiclesState();
}

class _MyVehiclesState extends State<MyVehicles> {
  String radioButton = '';
  int id = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ScreenBackgroundColor,
      appBar: AppBar(
        backgroundColor: ScreenBackgroundColor,
        // leading: Image.asset('assets/icons/back_icon.png',fit: BoxFit.fill,),
        // leading: InkWell(
        //   onTap: () {
        //     gotoScreen(context: context, screen: AddVehicleScreen());
        //   },
        //
        //   child: Neumorphic(
        //       margin: const EdgeInsets.all(0),
        //     padding : const EdgeInsets.all(0),
        //     style: NeumorphicStyle(
        //         boxShape: NeumorphicBoxShape.roundRect(
        //             BorderRadius.circular(50)),
        //         shadowLightColorEmboss: Colors.white,
        //         shadowDarkColorEmboss: Colors.black,
        //         shadowDarkColor: Colors.black
        //     ),
        //     child: Icon(
        //       Icons.arrow_back_ios,
        //       color: Colors.black,
        //       // color: Color(0xffEEF0F5),
        //     ),
        //   ),
        // ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Row(
            children: [
              BackButtonOnAppBar(),
            ],
          ),
        ),
        title: Text(
          screenTitleMyVehicle,
          style: TextStyle(
            fontFamily: textFontFamily,
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
            ///add Vehicle Text

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// add Vehicle Text
                  Text(
                    addVehicleDescriptionText,
                    style: TextStyle(
                      fontFamily: textFontFamily,
                      fontSize: 20,
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  InkWell(
                    onTap: () {
                      gotoScreen(context: context, screen: AddVehicleScreen());
                    },
                    child: Neumorphic(
                      style: NeumorphicStyle(
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(50)),
                          shadowLightColorEmboss: Colors.white,
                          shadowDarkColorEmboss: Colors.black,
                          shadowDarkColor: Colors.black),
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                        // color: Color(0xffEEF0F5),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            ///List 1
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Neumorphic(
                style: NeumorphicStyle(
                    shadowLightColorEmboss: Colors.white,
                    shadowDarkColorEmboss: Colors.black,
                    shadowDarkColor: Colors.black),
                child: Container(
                  width: MediaQuery.of(context).size.width*9,
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
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Radio<int>(
                          value: 1,
                          groupValue: id,
                          hoverColor: Colors.red,
                          activeColor: Colors.red,
                          onChanged: (val) {
                            setState(() {
                              id = 1;
                              radioButton = '';
                            },
                            );
                          },
                        ),
                      ),

                      ///bike image
                      Image.asset(bikeImageImagePath),
                      Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontFamily: textFontFamily,
                            fontSize: 14,
                            color: const Color(0xff000000),
                          ),
                          children: [
                            TextSpan(
                              text: companyNameKTM + '\n',
                            ),
                            TextSpan(
                              text: bikeDetailsHundredDuke,
                              style: TextStyle(
                                color: const Color(0xffd33937),
                              ),
                            ),
                          ],
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
            ///List 2
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Neumorphic(
                style: NeumorphicStyle(
                    shadowLightColorEmboss: Colors.white,
                    shadowDarkColorEmboss: Colors.black,
                    shadowDarkColor: Colors.black),
                child: Container(
                  width: MediaQuery.of(context).size.width*9,
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
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Radio<int>(
                          value: 2,
                          groupValue: id,
                          hoverColor: Colors.red,
                          activeColor: Colors.red,
                          onChanged: (val) {
                            setState(() {
                              id = 2;
                              radioButton = '';
                            },
                            );
                          },
                        ),
                      ),

                      ///bike image
                      Image.asset(bikeImageImagePath),
                      Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontFamily: textFontFamily,
                            fontSize: 14,
                            color: const Color(0xff000000),
                          ),
                          children: [
                            TextSpan(
                              text: companyNameKTM + '\n',
                            ),
                            TextSpan(
                              text: bikeDetailsHundredDuke,
                              style: TextStyle(
                                color: const Color(0xffd33937),
                              ),
                            ),
                          ],
                        ),
                        textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
            ///List 3
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Neumorphic(
                style: NeumorphicStyle(
                    shadowLightColorEmboss: Colors.white,
                    shadowDarkColorEmboss: Colors.black,
                    shadowDarkColor: Colors.black),
                child: Container(
                  width: MediaQuery.of(context).size.width*9,
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
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Radio<int>(
                          value: 3,
                          groupValue: id,
                          hoverColor: Colors.red,
                          activeColor: Colors.red,
                          onChanged: (val) {
                            setState(() {
                              id = 3;
                              radioButton = '';
                            },
                            );
                          },
                        ),
                      ),

                      ///bike image
                      Image.asset(bikeImageImagePath),
                      Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontFamily: textFontFamily,
                            fontSize: 14,
                            color: const Color(0xff000000),
                          ),
                          children: [
                            TextSpan(
                              text: companyNameKTM + '\n',
                            ),
                            TextSpan(
                              text: bikeDetailsHundredDuke,
                              style: TextStyle(
                                color: const Color(0xffd33937),
                              ),
                            ),
                          ],
                        ),
                        textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
