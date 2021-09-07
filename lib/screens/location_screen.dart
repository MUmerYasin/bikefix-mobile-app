import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/screens/home_screen.dart';
import 'package:two_wheel_vehicle/screens/navigator_helper.dart';

import '../config.dart';
import '../widgets.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  int selected = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ScreenBackgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ScreenBackgroundColor,
        // leading: Image.asset('assets/icons/back_icon.png',fit: BoxFit.fill,),
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Row(
            children: [
              BackButtonOnAppBar(),
            ],
          ),
        ),
        title: Text(
          screenTitleLocation,
          style: TextStyle(
            fontFamily: textFontFamily,
            fontSize: 18,
            color: const Color(0xff000000),
          ),
          textAlign: TextAlign.left,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all(15),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: CustomAppBar(title: 'Location',),
              // ),
              ///images map images
              Neumorphic(
                style: NeumorphicStyle(
                  shadowDarkColor: Colors.black.withOpacity(0.6),
                  depth: 8,
                  shape: NeumorphicShape.flat,
                  // shadowDarkColor: Colors.black12,
                  shadowLightColor: Colors.white,
                  shadowDarkColorEmboss: Colors.black.withOpacity(0.8),
                    ),
                child: Container(
                  // height: 200,
                  // color: Colors.blue,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    mapImagePath,
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              ///Use Current Location icon and text
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.my_location,
                      color: Color(0xff2DAC00),
                    ),
                    Text(
                      currentLocationDescriptionText,
                      style: TextStyle(
                        fontFamily: textFontFamily,
                        fontSize: 12,
                        color: const Color(0xff2dac00),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),

              /// Email Text Field
              CustomTextField(
                text: textFieldStreet,
              ),

              ///city Text Field
              CustomTextField(
                text: textFieldCity,
              ),

              /// text Field Zip Code
              CustomTextField(
                text: textFieldZipCode,
              ),

              /// Button Home, Office, Other
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ///Button Home
                    SmallRoundedCornerButton(
                        onPressed: () {
                          setState(
                            () {
                              selected = 1;
                            },
                          );
                        },
                        child: buttonNameHome,
                        color: selected == 1 ? true : false),

                    ///Button Office
                    SmallRoundedCornerButton(
                        onPressed: () {
                          setState(
                            () {
                              selected = 2;
                            },
                          );
                        },
                        child: buttonNameOffice,
                        color: selected == 2 ? true : false),

                    ///button Other
                    SmallRoundedCornerButton(
                        onPressed: () {
                          setState(
                            () {
                              selected = 3;
                            },
                          );
                        },
                        child: buttonNameOther,
                        color: selected == 3 ? true : false),
                  ],
                ),
              ),

              ///button Save Addr
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RoundedCornerButton(
                  onPressed: () {
                    gotoScreen(context: context, screen: HomeScreen());
                  },
                  child: buttonNameSaveAddr,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
