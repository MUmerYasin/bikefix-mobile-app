import 'package:flutter/material.dart';
import 'package:two_wheel_vehicle/screens/location_screen.dart';

import '../config.dart';
import '../widgets.dart';
import 'navigator_helper.dart';

class MyProfileScreen extends StatefulWidget {

  @override
  _MyProfileScreenState createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ScreenBackgroundColor,
        appBar: AppBar(
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
            screenTitleMyProfile,
          style: TextStyle(
            fontFamily: textFontFamily,
            fontSize: 18,
            color: const Color(0xff000000),
          ),
          textAlign: TextAlign.left,
        ),centerTitle: true,
        ),
        body: SafeArea(
          child: Container(
              padding: EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // CustomAppBar(title: 'My Profile',action: 'Edit',onTap: (){Navigator.pop(context);},),
                    Expanded(child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      /// Name Text Field
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            textFieldName,
                            style: TextStyle(
                              fontFamily: textFontFamily,
                              fontSize: 18,
                              color: const Color(0xff000000),
                              height: 1,
                            ),
                            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      CustomTextField(text: textFieldName,),
                      /// E-Mail Text Field
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            textFieldEmail,
                            style: TextStyle(
                              fontFamily: textFontFamily,
                              fontSize: 18,
                              color: const Color(0xff000000),
                              height: 1,
                            ),
                            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      CustomTextField(text: mailDescriptionText,),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            ///Date of Birth Text Field
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    textFieldDOB,
                                    style: TextStyle(
                                      fontFamily: textFontFamily,
                                      fontSize: 18,
                                      color: const Color(0xff000000),
                                      height: 1,
                                    ),
                                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width * .42,
                                    child: CustomTextField(text: dateDescriptionText,),),
                              ],
                            ),
                            /// text Field Gender
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    textFieldGender,
                                    style: TextStyle(
                                      fontFamily: textFontFamily,
                                      fontSize: 18,
                                      color: const Color(0xff000000),
                                      height: 1,
                                    ),
                                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *.43,
                                    child: CustomTextField(text: maleDescriptionText,),),
                              ],
                            ),

                          ],
                        ),
                      ),
                      RoundedCornerButton(
                        onPressed: () {
                          gotoScreen(context: context,screen:LocationScreen());
                        },
                        child: buttonNameSave,
                      ),
                    ],),),

                  ],),),
        ),);
  }
}
