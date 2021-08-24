import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/screens/mybooking_screen.dart';
import 'package:two_wheel_vehicle/screens/navigator_helper.dart';

import '../config.dart';
import '../widgets.dart';

class AddVehicleScreen extends StatefulWidget {
  @override
  _AddVehicleScreenState createState() => _AddVehicleScreenState();
}

class _AddVehicleScreenState extends State<AddVehicleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: backgroundColor,
        // leading: Image.asset('assets/icons/back_icon.png',fit: BoxFit.fill,),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          screenTitleAddVehicle,
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
        padding: EdgeInsets.all(16),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 10),
              child: Neumorphic(
                style: NeumorphicStyle(
                  // shadowLightColorEmboss: Colors.white,
                  // shadowDarkColorEmboss: Colors.black,
                  // shadowDarkColor: Colors.black,
                  shadowDarkColor: Colors.black.withOpacity(0.6),
                  depth: 7,
                  shape: NeumorphicShape.flat,
                  shadowLightColor: Colors.white,
                  shadowDarkColorEmboss: Colors.black.withOpacity(0.8),
                ),
                child: Container(
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Choose Brand',
                          style: TextStyle(
                            fontFamily: textFontFamily,
                            fontSize: 18,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 10),
              child: Neumorphic(
                style: NeumorphicStyle(
                  shadowDarkColor: Colors.black.withOpacity(0.6),
                  depth: 7,
                  shape: NeumorphicShape.flat,
                  shadowLightColor: Colors.white,
                  shadowDarkColorEmboss: Colors.black.withOpacity(0.8),
                ),
                child: Container(
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Choose Model',
                          style: TextStyle(
                            fontFamily: textFontFamily,
                            fontSize: 18,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Icon(
                          Icons.arrow_drop_down_outlined,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),


            // Padding(
            //   padding: const EdgeInsets.only(top: 8.0, bottom: 10),
            //   child: Neumorphic(
            //     style: NeumorphicStyle(
            //       shadowDarkColor: Colors.black.withOpacity(0.6),
            //       depth: 7,
            //       shape: NeumorphicShape.flat,
            //       shadowLightColor: Colors.white,
            //       shadowDarkColorEmboss: Colors.black.withOpacity(0.8),
            //     ),
            //     child: Container(
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(5.0),
            //         gradient: LinearGradient(
            //           begin: Alignment(-1.0, -1.0),
            //           end: Alignment(1.01, 1.0),
            //           colors: [
            //             const Color(0xffeef0f5),
            //             const Color(0xffe6e9ef)
            //           ],
            //           stops: [0.0, 1.0],
            //         ),
            //         boxShadow: [
            //           BoxShadow(
            //             color: const Color(0xb2a6b4c8),
            //             offset: Offset(10, 10),
            //             blurRadius: 48,
            //           ),
            //         ],
            //       ),
            //       child: Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Row(
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             // Text(
            //             //   'Year',
            //             //   style: TextStyle(
            //             //     fontFamily: textFontFamily,
            //             //     fontSize: 18,
            //             //     color: const Color(0xff000000),
            //             //   ),
            //             //   textAlign: TextAlign.left,
            //             // ),
            //             // Text(
            //             //   '',
            //             //   style: TextStyle(
            //             //     fontFamily: textFontFamily,
            //             //     fontSize: 18,
            //             //     color: const Color(0xff000000),
            //             //   ),
            //             //   textAlign: TextAlign.left,
            //             // ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // ),

            CustomDropDownMenu(
                customDropDownValue: dropDownMenuChooseBrand,
                bikeDetailsData: chooseBrandListDropDownMenu,
            ),


            CustomTextField(
              text: textFieldYear,
            ),

            ///Heading Fuel Type
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  fuelTypeText,
                  style: TextStyle(
                    fontFamily: textFontFamily,
                    fontSize: 18,
                    color: const Color(0xff000000),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            /// Select Option Fuel Type, Petrol or Diesel
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Neumorphic(
                    style: NeumorphicStyle(
                      shadowDarkColor: Colors.black.withOpacity(0.6),
                      depth: 7,
                      shape: NeumorphicShape.flat,
                      shadowLightColor: Colors.white,
                      shadowDarkColorEmboss: Colors.black.withOpacity(0.8),
                    ),
                    child: Container(
                      // width: 150.0,
                      width: MediaQuery.of(context).size.width*0.42,
                      height: 100.0,
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/petrol_icon.png'),
                          Text(
                            'Petrol',
                            style: TextStyle(
                              fontFamily: textFontFamily,
                              fontSize: 18,
                              color: const Color(0xff000000),
                            ),
                            textAlign: TextAlign.left,
                          )
                        ],
                      ),
                    ),
                  ),
                  Neumorphic(
                    style: NeumorphicStyle(
                      shadowDarkColor: Colors.black.withOpacity(0.6),
                      depth: 7,
                      shape: NeumorphicShape.flat,
                      shadowLightColor: Colors.white,
                      shadowDarkColorEmboss: Colors.black.withOpacity(0.8),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.42,
                      height: 100.0,
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/battery_icon.png'),
                          Text(
                            'Diesel',
                            style: TextStyle(
                              fontFamily: textFontFamily,
                              fontSize: 18,
                              color: const Color(0xff000000),
                            ),
                            textAlign: TextAlign.left,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            ///Button Proceed
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 10),
              child: RoundedCornerButton(
                onPressed: () {
                  gotoScreen(context: context, screen: MyBookingScreen());
                },
                child: buttonNameProceed,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
