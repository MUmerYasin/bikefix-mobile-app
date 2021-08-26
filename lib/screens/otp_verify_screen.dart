import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/screens/my_profile_screen.dart';

import '../config.dart';
import '../widgets.dart';
import 'navigator_helper.dart';

class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  late FocusNode field1;
  late FocusNode field2;
  late FocusNode field3;
  late FocusNode field4;
  late FocusNode field5;

  @override
  void initState() {
    field1 = FocusNode();
    field2 = FocusNode();
    field3 = FocusNode();
    field4 = FocusNode();
    field5 = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    field1.dispose();
    field2.dispose();
    field3.dispose();
    field4.dispose();
    field5.dispose();
    super.dispose();
  }

  void nextField (String value, FocusNode focusNode){

    if (value.length == 1){
      focusNode.requestFocus();
    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: NeumorphicColors.background,
        body: Container(
            padding: EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: Image.asset(
                    'assets/icons/otp_icon.png',
                    width: 200,
                    height: 200,
                  )),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Please enter OTP',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Neumorphic(
                            style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),shadowLightColor: Colors.white,shadowDarkColorEmboss: Colors.black54, shadowLightColorEmboss: Colors.white,shadowDarkColor: Colors.black54,color: NeumorphicColors.background),
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width / 6,
                              child: TextField(
                                maxLength: 1,
                                keyboardType: TextInputType.number,
                                onChanged: (value){
                                  nextField(value, field1);
                                },
                                autofocus: true,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  counterText: '',
                                    contentPadding: EdgeInsets.only(left: 14,right: 14),
                                    border: InputBorder.none,

                                ),
                              ),
                            ),
                          ),
                          Neumorphic(
                            style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),shadowLightColor: Colors.white,shadowDarkColorEmboss: Colors.black54, shadowLightColorEmboss: Colors.white,shadowDarkColor: Colors.black54,color: NeumorphicColors.background),
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width / 6,
                              child: TextField(
                                maxLength: 1,
                                focusNode: field1,
                                autofocus: true,
                                keyboardType: TextInputType.number,

                                textAlign: TextAlign.center,
                                onChanged: (value){
                                  nextField(value, field2);

                                },
                                decoration: InputDecoration(
                                  counterText: '',
                                    contentPadding: EdgeInsets.only(left: 14,right: 14),
                                    border: InputBorder.none,

                                ),
                              ),
                            ),
                          ),
                          Neumorphic(
                            style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),shadowLightColor: Colors.white,shadowDarkColorEmboss: Colors.black54, shadowLightColorEmboss: Colors.white,shadowDarkColor: Colors.black54,color: NeumorphicColors.background),
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width / 6,
                              child: TextField(
                                focusNode: field2,
                                maxLength: 1,
                                autofocus: true,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                onChanged: (value){
                                  nextField(value, field3);
                                },
                                decoration: InputDecoration(
                                  counterText: '',
                                    contentPadding: EdgeInsets.only(left: 14,right: 14),
                                    border: InputBorder.none,

                                ),
                              ),
                            ),
                          ),
                          Neumorphic(
                            style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),shadowLightColor: Colors.white,shadowDarkColorEmboss: Colors.black54, shadowLightColorEmboss: Colors.white,shadowDarkColor: Colors.black54,color: NeumorphicColors.background),
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width / 6,
                              child: TextField(
                                focusNode: field3,
                                maxLength: 1,
                                autofocus: true,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                onChanged: (value){
                                  nextField(value, field4);
                                },
                                decoration: InputDecoration(
                                  counterText: '',
                                    contentPadding: EdgeInsets.only(left: 14,right: 14),
                                    border: InputBorder.none,

                                ),
                              ),
                            ),
                          ),
                          Neumorphic(
                            style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),shadowLightColor: Colors.white,shadowDarkColorEmboss: Colors.black54, shadowLightColorEmboss: Colors.white,shadowDarkColor: Colors.black54,color: NeumorphicColors.background),
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width / 6,
                              child: TextField(
                                focusNode: field4,
                                maxLength: 1,

                                autofocus: true,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                onChanged: (value){
                                  nextField(value, field5);
                                },
                                decoration: InputDecoration(
                                  counterText: '',
                                    contentPadding: EdgeInsets.only(left: 14,right: 14),
                                    border: InputBorder.none,

                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      RoundedCornerButton(
                        onPressed: () {
                          gotoScreen(context: context,screen:MyProfileScreen());

                        },
                        child: 'Confirm',
                      ),
                      Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            color: const Color(0xff000000),
                          ),
                          children: [
                            TextSpan(
                              text: 'Resend',
                            ),
                          ],
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  )),
                ])));
  }
}
