import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/screens/otp_verify_screen.dart';

import '../config.dart';
import '../widgets.dart';
import 'navigator_helper.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          
            backgroundColor: NeumorphicColors.background,
            body: SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.all(15),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(child: Image.asset('assets/icons/logo.png',width: 200,height: 200,)),
                        Expanded(child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Neumorphic(
                              style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),shadowLightColor: Colors.white,shadowDarkColorEmboss: Colors.black54, shadowLightColorEmboss: Colors.white,shadowDarkColor: Colors.black54,color: NeumorphicColors.background),
                              child: Container(
                                height: 50,
                                child: TextField(
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 14,right: 14),
                                      border: InputBorder.none,
                                      hintText: "Name"
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Neumorphic(
                              style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),shadowLightColor: Colors.white,shadowDarkColorEmboss: Colors.black54, shadowLightColorEmboss: Colors.white,shadowDarkColor: Colors.black54,color: NeumorphicColors.background),
                              child: Container(
                                height: 50,
                                child: TextField(
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 14,right: 14),
                                      border: InputBorder.none,
                                      hintText: "Email"
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Row(

                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Neumorphic(
                                  style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),shadowLightColor: Colors.white,shadowDarkColorEmboss: Colors.black54, shadowLightColorEmboss: Colors.white,shadowDarkColor: Colors.black54,color: NeumorphicColors.background),
                                  child: Container(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width / 2.5,
                                    child: TextField(
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(left: 14,right: 14),
                                          border: InputBorder.none,
                                          hintText: "DOB"
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Neumorphic(
                                  style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),shadowLightColor: Colors.white,shadowDarkColorEmboss: Colors.black54, shadowLightColorEmboss: Colors.white,shadowDarkColor: Colors.black54,color: NeumorphicColors.background),
                                  child: Container(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width / 2.5,
                                    child: TextField(
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(left: 14,right: 14),
                                          border: InputBorder.none,
                                          hintText: "Gender"
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Neumorphic(
                              style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),shadowLightColor: Colors.white,shadowDarkColorEmboss: Colors.black54, shadowLightColorEmboss: Colors.white,shadowDarkColor: Colors.black54,color: NeumorphicColors.background),
                              child: Container(
                                height: 50,
                                child: TextField(
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 14,right: 14),
                                      border: InputBorder.none,
                                      hintText: "Phone Number"
                                  ),
                                ),
                              ),
                            ),
                          ),

                          // width: MediaQuery.of(context).size.width / 3,



                          RoundedCornerButton(
                            onPressed: () {
                              gotoScreen(context: context,screen:OTPScreen());

                            },
                            child: 'Sign Up',
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text.rich(
                              TextSpan(
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  color: const Color(0xff000000),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'If already user,',
                                  ),
                                  TextSpan(
                                    text: ' Log In',
                                    style: TextStyle(
                                      color: const Color(0xffd33937),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              textHeightBehavior:
                              TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],)),




                      ])),
            )),
      
    );
  }
}
