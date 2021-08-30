import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/config.dart';
import 'package:two_wheel_vehicle/screens/navigator_helper.dart';
import 'package:two_wheel_vehicle/widgets.dart';

class GeneralServiceScreen extends StatefulWidget {
  const GeneralServiceScreen({Key? key}) : super(key: key);

  @override
  _GeneralServiceScreenState createState() => _GeneralServiceScreenState();
}

class _GeneralServiceScreenState extends State<GeneralServiceScreen> {

  final List data = [
    '09:00 am - 10:00 am',
    '10:00 am - 11:00 am',
    '11:00 am - 12:00 am',
    '12:00 am - 01:00 am',
    '01:00 am - 02:00 am',
    '02:00 am - 03:00 am',
    '03:00 am - 04:00 am',
    '04:00 am - 05:00 am'
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicColors.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: NeumorphicColors.background,
        title: Text(
          screenTitleGeneralService,
          style: TextStyle(color: Colors.black),
        ),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      depth: 8,
                      shape: NeumorphicShape.flat,
                      shadowDarkColorEmboss: Colors.black.withOpacity(0.7),
                      shadowDarkColor: Colors.black.withOpacity(0.7),
                      shadowLightColor: Colors.white,
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      // height: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            ///  Image and Text, Icon and Title
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  generalServiceHomePageIcon,
                                  width: 30.0,
                                  height: 30.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Text(
                                    paymentConfirmedText,
                                    style: TextStyle(
                                      fontFamily: textFontFamily,
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            ///Divider Custom
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: DividerCustom(),
                            ),

                            ///Text, Questions
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0, bottom: 12.0,),
                                  child: Text(
                                    questionMenuTextWhatServices,
                                    style: TextStyle(
                                      fontFamily: textFontFamily,
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            ///Text, Check List to be complete
                            SizedBox(
                              height: 200,
                              // child: Column(
                              //   mainAxisAlignment: MainAxisAlignment.start,
                              //   crossAxisAlignment: CrossAxisAlignment.start,
                              //   children: [

                                  // Neumorphic(
                                  //   style: NeumorphicStyle(
                                  //       boxShape: NeumorphicBoxShape.roundRect(
                                  //           BorderRadius.circular(50)),
                                  //       shadowLightColorEmboss: Colors.white,
                                  //       shadowDarkColorEmboss: buttonColor,
                                  //       shadowDarkColor: buttonColor,
                                  //     color: buttonColor,
                                  //   ),
                                  //   child: Icon(
                                  //     Icons.circle,
                                  //     color: buttonColor,
                                  //     size: 9.0,
                                  //     // color: Color(0xffEEF0F5),
                                  //   ),
                                  // ),
///////////////////////////////////////////////////////////////////////////////////
                                  // Padding(
                                  //   padding: const EdgeInsets.only(left: 12.0,),
                                  //
                                  //   child: Text(
                                  //     CheckListMenuTextEngineOil,
                                  //     style: TextStyle(
                                  //       fontFamily: textFontFamily,
                                  //       fontSize: 13,
                                  //       color: Colors.black,
                                  //       // fontWeight: FontWeight.bold,
                                  //     ),
                                  //
                                  //   ),
                                  // ),

                                  child:
                                  ListView(
                                    padding: EdgeInsets.all(0.0),
                                    // scrollDirection : Axis.vertical,
                                    shrinkWrap : true,
                                      physics:ClampingScrollPhysics(),
                                    children: data
                                    .map(
                                      (element) => ListTile(
                                          leading:Neumorphic(
                                            style: NeumorphicStyle(
                                              boxShape: NeumorphicBoxShape.roundRect(
                                                  BorderRadius.circular(50)),
                                              shadowLightColorEmboss: Colors.white,
                                              shadowDarkColorEmboss: buttonColor,
                                              shadowDarkColor: buttonColor,
                                              color: buttonColor,
                                            ),
                                            child: Icon(
                                              Icons.circle,
                                              color: buttonColor,
                                              size: 9.0,
                                              // color: Color(0xffEEF0F5),
                                            ),
                                          ),
                                        title: Text(element,
                                          style: TextStyle(
                                                  fontFamily: textFontFamily,
                                                  fontSize: 13,
                                                  color: Colors.black,
                                                  // fontWeight: FontWeight.bold,
                                                ),
                                        ),
                                          dense: true,
                                          minVerticalPadding: 0.0,
                                          horizontalTitleGap: 0.0,
                                          contentPadding:EdgeInsets.all(0.0),
                                      ),
                                    )
                                    .toList(),
                              ),

                              //   ],
                              // ),
                            ),

                            ///Text, other additional problems, //Any other additional problems will be reported post vehicle inspection
                            Text(
                              instructionForMenuTextOtherAdditionalProblems,
                              style: TextStyle(
                                fontFamily: textFontFamily,
                                fontSize: 12,
                                color: Color(0xffDCBC15),
                              ),
                                textAlign: TextAlign.left,
                              // overflow: TextOverflow.ellipsis,
                                softWrap:true,
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

                ///Button Try Again
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30.0,
                  ),
                  child: RoundedCornerButton(
                    onPressed: () {
                      gotoScreen(
                          context: context, screen: GeneralServiceScreen());
                    },
                    child: buttonNameTryAgain,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
