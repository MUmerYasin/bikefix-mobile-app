import 'package:flutter/material.dart';
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
                  Expanded(child: Image.asset('assets/icons/logo.png',width: 200,height: 200,)),
                  Expanded(child: Column(children: [
                    CustomTextField(text: 'Name',),
                    Row(

                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 3,
                            child: CustomTextField(text: 'DOB',)),
                        Spacer(),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 3,
                            child: CustomTextField(text: 'Gender',)),
                      ],),
                    CustomTextField(text: 'Phone',),
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




                ])));
  }
}
