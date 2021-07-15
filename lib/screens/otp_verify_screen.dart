import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:two_wheel_vehicle/screens/my_profile_screen.dart';

import '../config.dart';
import '../widgets.dart';
import 'navigator_helper.dart';

class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
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
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 6,
                              child: CustomTextField(
                                text: '',
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 6,
                              child: CustomTextField(
                                text: '',
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 6,
                              child: CustomTextField(
                                text: '',
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 6,
                              child: CustomTextField(
                                text: '',
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 6,
                              child: CustomTextField(
                                text: '',
                              )),
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
