import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/config.dart';
import 'package:two_wheel_vehicle/screens/register_screen.dart';
import 'package:two_wheel_vehicle/widgets.dart';

import 'navigator_helper.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            Expanded(child: Image.asset('assets/icons/logo.png',width: 200,height: 200,)),
           Expanded(child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
             Neumorphic(
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
             Padding(
               padding: const EdgeInsets.only(top: 18.0),
               child: RoundedCornerButton(
                 onPressed: () {
                   gotoScreen(context: context,screen:RegisterScreen());
                 },
                 child: 'Log In',
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 13.0),
               child: Text.rich(
                 TextSpan(
                   style: TextStyle(
                     fontFamily: 'Roboto',
                     fontSize: 14,
                     color: const Color(0xff000000),
                   ),
                   children: [
                     TextSpan(
                       text: 'Don’t Have account? ',
                     ),
                     TextSpan(
                       text: 'Sign Up',
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
           ],),),

          ],
        ),
      ),
    );
  }
}
