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
      body: SingleChildScrollView(
        child: SizedBox(
          // padding: EdgeInsets.all(16),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              // mainAxisSize : MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      bikeFixUpLogoImagePath,
                      width: 140,
                      height: 140,
                    ),
                  ],
                ),

                Column(
                  mainAxisSize : MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    /// Text Field Name
                    CustomTextField(
                      text: textFieldName,
                    ),
                    CustomTextField(
                      text: textFieldEmail,
                    ),
                    Row(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.44,

                            /// Text Field DOB
                            child: CustomTextField(
                              text: textFieldDOB,
                            )),

                        /// Spacer(),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.01,
                        ),

                        /// Text Field Gender
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.44,
                            child: CustomTextField(
                              text: textFieldGender,
                            )),
                      ],
                    ),

                    ///Text Field Phone
                    CustomTextField(
                      text: textFieldPhoneNumber,
                    ),

                    // SizedBox(height: 8.0,),

                  ],
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ///Button Name Sign Up
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: RoundedCornerButton(
                        onPressed: () {
                          gotoScreen(context: context, screen: OTPScreen());
                        },
                        child: buttonNameSignUp,
                      ),
                    ),

                    /// logIn Description Text (If already user, Login)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontFamily: textFontFamily,
                            fontSize: 14,
                            color: const Color(0xff000000),
                          ),
                          children: [
                            TextSpan(
                              text: logInDescriptionText,
                            ),
                            TextSpan(
                              text: buttonNameLogIn,
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
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
