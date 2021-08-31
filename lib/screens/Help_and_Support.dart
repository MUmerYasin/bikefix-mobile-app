import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:two_wheel_vehicle/config.dart';
// import 'package:two_wheel_vehicle/screens/navigator_helper.dart';
import 'package:two_wheel_vehicle/widgets.dart';

class HelpAndSupportScreen extends StatefulWidget {
  const HelpAndSupportScreen({Key? key}) : super(key: key);

  @override
  _HelpAndSupportScreenState createState() => _HelpAndSupportScreenState();
}

class _HelpAndSupportScreenState extends State<HelpAndSupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicColors.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: NeumorphicColors.background,
        title: Text(HelpSupportText,  style: TextStyle(
          fontFamily: textFontFamily,
          fontSize: 18,
          color: Colors.black,
          // fontWeight: FontWeight.bold,
        ),),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Neumorphic(
                  style: NeumorphicStyle(
                    depth: 8,
                    shape: NeumorphicShape.flat,
                    shadowDarkColorEmboss: Colors.black.withOpacity(0.7),
                    // boxShape: NeumorphicBoxShape.circle(),
                    shadowDarkColor: Colors.black.withOpacity(0.7),
                    shadowLightColor: Colors.white,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    // height: 200,
                    child: Center(
                      child: Column(
                        children: [


                          ///Phone Number, Icon with text, 966 325 4568
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // Neumorphic(
                                //   margin: const EdgeInsets.all(0),
                                //   padding: const EdgeInsets.all(0),
                                //   style: NeumorphicStyle(
                                //     depth: 7,
                                //     shape: NeumorphicShape.flat,
                                //     shadowDarkColorEmboss:
                                //         Colors.black.withOpacity(0.7),
                                //     // boxShape: NeumorphicBoxShape.circle(),
                                //     shadowDarkColor:
                                //         Colors.black.withOpacity(0.5),
                                //     shadowLightColor: Colors.grey,
                                //     boxShape: NeumorphicBoxShape.roundRect(
                                //       BorderRadius.circular(8),
                                //     ),
                                //     lightSource: LightSource.topLeft,
                                //     color: Colors.white,
                                //   ),

                                  // child:
                                      // IconButton(
                                      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                      // icon:
                                      // FaIcon(FontAwesomeIcons.phoneSquareAlt,
                                      //     color: Colors.red.shade800),
                                  // onPressed: () {
                                  //   // print("Pressed");
                                  // }),
                                // ),

                                IconButton(

                                  // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                  icon:
                                  new Image.asset(phoneLogoImagePath, fit:BoxFit.cover),
                                  onPressed: () {
                                    // print("Pressed");
                                  },
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: Text(
                                    phoneNumberHelpSupportText,
                                    style: TextStyle(
                                      fontFamily: textFontFamily,
                                      // fontSize: 18,
                                      color: Colors.black,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          DividerCustom(),

                          ///Email, Icon with text, example@mail.com
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                  icon:
                                  new Image.asset(emailLogoImagePath,fit:BoxFit.cover,),
                                  onPressed: () {
                                    // print("Pressed");
                                  },
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: Text(
                                    emailHelpSupportText,
                                    style: TextStyle(
                                      fontFamily: textFontFamily,
                                      // fontSize: 18,
                                      color: Colors.black,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          DividerCustom(),

                          ///Social Media Icon
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0,bottom: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Neumorphic(
                                  margin: const EdgeInsets.all(0),
                                  padding: const EdgeInsets.all(0),
                                  style: NeumorphicStyle(
                                    depth: 7,
                                    shape: NeumorphicShape.flat,
                                    shadowDarkColorEmboss:
                                        Colors.black.withOpacity(0.7),
                                    // boxShape: NeumorphicBoxShape.circle(),
                                    shadowDarkColor:
                                        Colors.black.withOpacity(0.5),
                                    shadowLightColor: Colors.grey,
                                    // boxShape: NeumorphicBoxShape.roundRect(
                                    //   BorderRadius.circular(8),
                                    // ),
                                    lightSource: LightSource.topLeft,
                                    color: Colors.white,
                                  ),

                                // child:
                                // IconButton(
                                // // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                // icon:
                                // FaIcon(FontAwesomeIcons.whatsappSquare,
                                //     color: Colors.green.shade700),
                                // onPressed: () {
                                //   // print("Pressed");
                                // },
                                // ),
                                  child:
                                  IconButton(
                                    // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                    icon:
                                    new Image.asset(whatsappLogoImagePath),
                                    onPressed: () {
                                      // print("Pressed");
                                    },
                                  ),


                                ),

                                Neumorphic(
                                  margin: const EdgeInsets.all(0),
                                  padding: const EdgeInsets.all(0),
                                  style: NeumorphicStyle(
                                    depth: 7,
                                    shape: NeumorphicShape.flat,
                                    shadowDarkColorEmboss:
                                    Colors.black.withOpacity(0.7),
                                    // boxShape: NeumorphicBoxShape.circle(),
                                    shadowDarkColor:
                                    Colors.black.withOpacity(0.5),
                                    shadowLightColor: Colors.grey,
                                    // boxShape: NeumorphicBoxShape.roundRect(
                                    //   BorderRadius.circular(8),
                                    // ),
                                    lightSource: LightSource.topLeft,
                                    color: Colors.white,
                                  ),

                                  // child:
                                  // IconButton(
                                  //   // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                  //   icon:
                                  //   FaIcon(FontAwesomeIcons.facebookSquare,
                                  //       color: Colors.blue.shade900),
                                  //   onPressed: () {
                                  //     // print("Pressed");
                                  //   },),

                                  child:
                                  IconButton(
                                    // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                    icon:
                                    new Image.asset(facebookLogoImagePath),
                                    onPressed: () {
                                      // print("Pressed");
                                    },),


                                ),

                                Neumorphic(
                                  margin: const EdgeInsets.all(0),
                                  padding: const EdgeInsets.all(0),
                                  style: NeumorphicStyle(
                                    depth: 7,
                                    shape: NeumorphicShape.flat,
                                    shadowDarkColorEmboss:
                                    Colors.black.withOpacity(0.7),
                                    // boxShape: NeumorphicBoxShape.circle(),
                                    shadowDarkColor:
                                    Colors.black.withOpacity(0.5),
                                    shadowLightColor: Colors.grey,
                                    // boxShape: NeumorphicBoxShape.roundRect(
                                    //   BorderRadius.circular(8),
                                    // ),
                                    lightSource: LightSource.topLeft,
                                    color: Colors.white,
                                  ),

                                  child:
                                  IconButton(
                                    // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                    icon:
                                    new Image.asset(instagramLogoImagePath),
                                    onPressed: () {
                                      // print("Pressed");
                                    },),
                                ),
                              ],
                            ),
                          ),





                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top:30.0, bottom: 30.0),
                child: Text(TimingSupportText,  style: TextStyle(
                  fontFamily: textFontFamily,
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Neumorphic(
                  style: NeumorphicStyle(
                    depth: 8,
                    shape: NeumorphicShape.flat,
                    shadowDarkColorEmboss: Colors.black.withOpacity(0.7),
                    // boxShape: NeumorphicBoxShape.circle(),
                    shadowDarkColor: Colors.black.withOpacity(0.7),
                    shadowLightColor: Colors.white,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    // height: 200,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:16.0),
                            child: Text(termsConditionsHelpSupportText,  style: TextStyle(
                              fontFamily: textFontFamily,
                              // fontSize: 18,
                              color: Colors.black,
                              // fontWeight: FontWeight.bold,
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:16.0, bottom: 16.0),
                            child: Text(appVersionHelpSupportText,  style: TextStyle(
                              fontFamily: textFontFamily,
                              // fontSize: 18,
                              color: Colors.black,
                              // fontWeight: FontWeight.bold,
                            ),),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // RoundedCornerButton(
              //     child: buttonNameTryAgain,
              // ),

             // ///Button Try Again
              // Padding(
              //   padding: const EdgeInsets.only(
              //     top: 30.0,
              //   ),
              //   child: RoundedCornerButton(
              //     onPressed: () {
              //       gotoScreen(context: context, screen: HelpAndSupportScreen());
              //     },
              //     child: buttonNameTryAgain,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
