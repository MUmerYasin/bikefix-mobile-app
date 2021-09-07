import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:two_wheel_vehicle/screens/home_screen.dart';
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
      backgroundColor: ScreenBackgroundColor,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all(16),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ///Image
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Image.asset(
                  otpIconImagePath,
                  width: 200,
                  height: 200,
                ),
              ),

              /// please Enter OTP Description Text
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  pleaseEnterOTPDescriptionText,
                  style: TextStyle(
                    fontFamily: textFontFamily,
                    fontSize: 18,
                    color: const Color(0xff000000),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              /// 5 Text Fields
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 6,
                    child: CustomTextField(
                      text: '1',
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 6,
                    child: CustomTextField(
                      text: '1',
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 6,
                    child: CustomTextField(
                      text: '1',
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 6,
                    child: CustomTextField(
                      text: '1',
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 6,
                    child: CustomTextField(
                      text: '1',
                    ),
                  ),
                ],
              ),

              ///button Confirm
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: RoundedCornerButton(
                  onPressed: () {
                    gotoScreen(context: context, screen: HomeScreen());
                  },
                  child: buttonNameConfirm,
                ),
              ),

              ///Link(Text) Resend
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontFamily: textFontFamily,
                      fontSize: 14,
                      color: const Color(0xff000000),
                    ),
                    children: [
                      TextSpan(
                        text: buttonNameResend,
                        recognizer: new TapGestureRecognizer()
                          ..onTap = () {
                            gotoScreen(context: context, screen: OTPScreen());
                          },
                      ),
                    ],
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
