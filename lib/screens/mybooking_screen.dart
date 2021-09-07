import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/screens/Help_and_Support.dart';
import 'package:two_wheel_vehicle/screens/home_screen.dart';
import 'package:two_wheel_vehicle/screens/navigator_helper.dart';
import 'package:two_wheel_vehicle/screens/service_status_screen.dart';
import 'package:two_wheel_vehicle/widgets.dart';

import '../config.dart';

class MyBookingScreen extends StatefulWidget {
  @override
  _MyBookingScreenState createState() => _MyBookingScreenState();
}

class _MyBookingScreenState extends State<MyBookingScreen> {
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
          screenTitleMyBookings,
          style: TextStyle(
            fontFamily: textFontFamily,
            fontSize: 18,
            color: const Color(0xff000000),
          ),
          textAlign: TextAlign.left,
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SingleItemOfServiceCompleteInMyBooking(
                  bikeDetaildate: dateDescriptionText,
                  bikeDetailtime: timeDescriptionText,
                  bikeDetailbikeLogo: ktmSmallIconImagePath,
                  bikeDetailBikeName: companyNameKTM,
                  bikeDetailitemsDetails: bikeDetailsHundredDuke,
                  bikeDetailProblem: naDescriptionText,
                  bikeDetailpaymentConfirmed: paymentConfirmedText,
                  bikeDetailHalfEngineOverhaul: bikeDetailsHalfEngineOverhaul,
                  bikeDetailServiceComplete: bikeDetailsServiceComplete,
                  bikeDetailIconforverified: Icons.check_circle),

              SizedBox(
                height: 20,
              ),

              SingleItemOfAwaitingConfirmationInMyBooking(
                  bikeDetaildate: dateDescriptionText,
                  bikeDetailtime: timeDescriptionText,
                  bikeDetailbikeLogo: ktmSmallIconImagePath,
                  bikeDetailBikeName: companyNameKTM,
                  bikeDetailitemsDetails: bikeDetailsHundredDuke,
                  bikeDetailProblem: naDescriptionText,
                  bikeDetailpaymentConfirmed: paymentConfirmedText,
                  bikeDetailHalfEngineOverhaul: bikeDetailsHalfEngineOverhaul,
                  bikeDetailsAwaitingConfirmations:
                      bikeDetailsAwaitingConfirmation,
                  bikeDetailIconforverified: Icons.check_circle),
              SizedBox(
                height: 20,
              ),

              // Neumorphic(
              //   style: NeumorphicStyle(
              //       shadowLightColorEmboss: Colors.white,
              //       shadowDarkColorEmboss: Colors.black,
              //       surfaceIntensity: 8,
              //       shadowDarkColor: Colors.black),
              //   child: Container(
              //     height: 200,
              //     padding: EdgeInsets.all(15),
              //     alignment: Alignment.center,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(5.0),
              //       gradient: LinearGradient(
              //         begin: Alignment(-1.0, -1.0),
              //         end: Alignment(1.01, 1.0),
              //         colors: [
              //           const Color(0xffeef0f5),
              //           const Color(0xffe6e9ef)
              //         ],
              //         stops: [0.0, 1.0],
              //       ),
              //       boxShadow: [
              //         BoxShadow(
              //           color: const Color(0xb2a6b4c8),
              //           offset: Offset(10, 10),
              //           blurRadius: 48,
              //         ),
              //       ],
              //     ),
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Text(
              //               '30/03/2021',
              //               style: TextStyle(
              //                 fontFamily: textFontFamily,
              //                 fontSize: 14,
              //                 color: const Color(0xff000000),
              //                 height: 1,
              //               ),
              //               textHeightBehavior: TextHeightBehavior(
              //                   applyHeightToFirstAscent: false),
              //               textAlign: TextAlign.left,
              //             ),
              //             Text(
              //               '03:45 pm',
              //               style: TextStyle(
              //                 fontFamily: textFontFamily,
              //                 fontSize: 14,
              //                 color: const Color(0xff000000),
              //                 height: 1,
              //               ),
              //               textHeightBehavior: TextHeightBehavior(
              //                   applyHeightToFirstAscent: false),
              //               textAlign: TextAlign.left,
              //             )
              //           ],
              //         ),
              //         Container(
              //           height: 5,
              //           decoration: BoxDecoration(
              //             color: const Color(0xffffffff),
              //           ),
              //         ),
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Image.asset('assets/icons/ktm_icon.png'),
              //             Column(
              //               children: [
              //                 Text(
              //                   'KTM 200 Duke',
              //                   style: TextStyle(
              //                     fontFamily: textFontFamily,
              //                     fontSize: 14,
              //                     color: const Color(0xff000000),
              //                   ),
              //                   textAlign: TextAlign.center,
              //                 ),
              //                 Text(
              //                   'NA',
              //                   style: TextStyle(
              //                     fontFamily: textFontFamily,
              //                     fontSize: 10,
              //                     color: const Color(0xff686868),
              //                   ),
              //                   textAlign: TextAlign.center,
              //                 ),
              //               ],
              //             ),
              //             Column(
              //               children: [
              //                 Row(
              //                   children: [
              //                     Text(
              //                       'Payment Confirmed',
              //                       style: TextStyle(
              //                         fontFamily: textFontFamily,
              //                         fontSize: 10,
              //                         color: const Color(0xff686868),
              //                       ),
              //                       textAlign: TextAlign.center,
              //                     ),
              //                     Icon(
              //                       Icons.check_circle,
              //                       size: 20,
              //                     ),
              //                   ],
              //                 ),
              //                 Text(
              //                   'Half Engine Overhaul',
              //                   style: TextStyle(
              //                     fontFamily: textFontFamily,
              //                     fontSize: 10,
              //                     color: const Color(0xffd33937),
              //                   ),
              //                   textAlign: TextAlign.center,
              //                 )
              //               ],
              //             ),
              //           ],
              //         ),
              //         Container(
              //           height: 5,
              //           decoration: BoxDecoration(
              //             color: const Color(0xffffffff),
              //           ),
              //         ),
              //         Text(
              //           'Service Complete',
              //           style: TextStyle(
              //             fontFamily: textFontFamily,
              //             fontSize: 12,
              //             color: const Color(0xff2dac00),
              //           ),
              //           textAlign: TextAlign.center,
              //         ),
              //         Container(
              //           height: 5,
              //           decoration: BoxDecoration(
              //             color: const Color(0xffffffff),
              //           ),
              //         ),
              //         RoundedCornerButton(
              //           onPressed: () {
              //             gotoScreen(
              //                 context: context,
              //                 screen: ServiceStatusScreen());
              //           },
              //           child: 'Need Help ?',
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // Neumorphic(
              //   style: NeumorphicStyle(
              //       shadowLightColorEmboss: Colors.white,
              //       shadowDarkColorEmboss: Colors.black,
              //       surfaceIntensity: 8,
              //       shadowDarkColor: Colors.black),
              //   child: Container(
              //     height: 200,
              //     padding: EdgeInsets.all(15),
              //     alignment: Alignment.center,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(5.0),
              //       gradient: LinearGradient(
              //         begin: Alignment(-1.0, -1.0),
              //         end: Alignment(1.01, 1.0),
              //         colors: [
              //           const Color(0xffeef0f5),
              //           const Color(0xffe6e9ef)
              //         ],
              //         stops: [0.0, 1.0],
              //       ),
              //       boxShadow: [
              //         BoxShadow(
              //           color: const Color(0xb2a6b4c8),
              //           offset: Offset(10, 10),
              //           blurRadius: 48,
              //         ),
              //       ],
              //     ),
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Text(
              //               '30/03/2021',
              //               style: TextStyle(
              //                 fontFamily: textFontFamily,
              //                 fontSize: 14,
              //                 color: const Color(0xff000000),
              //                 height: 1,
              //               ),
              //               textHeightBehavior: TextHeightBehavior(
              //                   applyHeightToFirstAscent: false),
              //               textAlign: TextAlign.left,
              //             ),
              //             Text(
              //               '03:45 pm',
              //               style: TextStyle(
              //                 fontFamily: textFontFamily,
              //                 fontSize: 14,
              //                 color: const Color(0xff000000),
              //                 height: 1,
              //               ),
              //               textHeightBehavior: TextHeightBehavior(
              //                   applyHeightToFirstAscent: false),
              //               textAlign: TextAlign.left,
              //             )
              //           ],
              //         ),
              //         Container(
              //           height: 5,
              //           decoration: BoxDecoration(
              //             color: const Color(0xffffffff),
              //           ),
              //         ),
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Image.asset('assets/icons/ktm_icon.png'),
              //             Column(
              //               children: [
              //                 Text(
              //                   'KTM 200 Duke',
              //                   style: TextStyle(
              //                     fontFamily: textFontFamily,
              //                     fontSize: 14,
              //                     color: const Color(0xff000000),
              //                   ),
              //                   textAlign: TextAlign.center,
              //                 ),
              //                 Text(
              //                   'NA',
              //                   style: TextStyle(
              //                     fontFamily: textFontFamily,
              //                     fontSize: 10,
              //                     color: const Color(0xff686868),
              //                   ),
              //                   textAlign: TextAlign.center,
              //                 ),
              //               ],
              //             ),
              //             Column(
              //               children: [
              //                 Row(
              //                   children: [
              //                     Text(
              //                       'Payment Confirmed',
              //                       style: TextStyle(
              //                         fontFamily: textFontFamily,
              //                         fontSize: 10,
              //                         color: const Color(0xff686868),
              //                       ),
              //                       textAlign: TextAlign.center,
              //                     ),
              //                     Icon(
              //                       Icons.check_circle,
              //                       size: 20,
              //                     ),
              //                   ],
              //                 ),
              //                 Text(
              //                   'Half Engine Overhaul',
              //                   style: TextStyle(
              //                     fontFamily: textFontFamily,
              //                     fontSize: 10,
              //                     color: const Color(0xffd33937),
              //                   ),
              //                   textAlign: TextAlign.center,
              //                 )
              //               ],
              //             ),
              //           ],
              //         ),
              //         Container(
              //           height: 5,
              //           decoration: BoxDecoration(
              //             color: const Color(0xffffffff),
              //           ),
              //         ),
              //         Text(
              //           'Service Complete',
              //           style: TextStyle(
              //             fontFamily: textFontFamily,
              //             fontSize: 12,
              //             color: const Color(0xff2dac00),
              //           ),
              //           textAlign: TextAlign.center,
              //         ),
              //         Container(
              //           height: 5,
              //           decoration: BoxDecoration(
              //             color: const Color(0xffffffff),
              //           ),
              //         ),
              //         RoundedCornerButton(
              //           onPressed: () {
              //             gotoScreen(
              //                 context: context,
              //                 screen: ServiceStatusScreen());
              //           },
              //           child: 'Need Help ?',
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // Neumorphic(
              //   style: NeumorphicStyle(
              //       shadowLightColorEmboss: Colors.white,
              //       shadowDarkColorEmboss: Colors.black,
              //       surfaceIntensity: 8,
              //       shadowDarkColor: Colors.black),
              //   child: Container(
              //     height: 200,
              //     padding: EdgeInsets.all(15),
              //     alignment: Alignment.center,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(5.0),
              //       gradient: LinearGradient(
              //         begin: Alignment(-1.0, -1.0),
              //         end: Alignment(1.01, 1.0),
              //         colors: [
              //           const Color(0xffeef0f5),
              //           const Color(0xffe6e9ef)
              //         ],
              //         stops: [0.0, 1.0],
              //       ),
              //       boxShadow: [
              //         BoxShadow(
              //           color: const Color(0xb2a6b4c8),
              //           offset: Offset(10, 10),
              //           blurRadius: 48,
              //         ),
              //       ],
              //     ),
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Text(
              //               '30/03/2021',
              //               style: TextStyle(
              //                 fontFamily: textFontFamily,
              //                 fontSize: 14,
              //                 color: const Color(0xff000000),
              //                 height: 1,
              //               ),
              //               textHeightBehavior: TextHeightBehavior(
              //                   applyHeightToFirstAscent: false),
              //               textAlign: TextAlign.left,
              //             ),
              //             Text(
              //               '03:45 pm',
              //               style: TextStyle(
              //                 fontFamily: textFontFamily,
              //                 fontSize: 14,
              //                 color: const Color(0xff000000),
              //                 height: 1,
              //               ),
              //               textHeightBehavior: TextHeightBehavior(
              //                   applyHeightToFirstAscent: false),
              //               textAlign: TextAlign.left,
              //             )
              //           ],
              //         ),
              //         Container(
              //           height: 5,
              //           decoration: BoxDecoration(
              //             color: const Color(0xffffffff),
              //           ),
              //         ),
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Image.asset('assets/icons/ktm_icon.png'),
              //             Column(
              //               children: [
              //                 Text(
              //                   'KTM 200 Duke',
              //                   style: TextStyle(
              //                     fontFamily: textFontFamily,
              //                     fontSize: 14,
              //                     color: const Color(0xff000000),
              //                   ),
              //                   textAlign: TextAlign.center,
              //                 ),
              //                 Text(
              //                   'NA',
              //                   style: TextStyle(
              //                     fontFamily: textFontFamily,
              //                     fontSize: 10,
              //                     color: const Color(0xff686868),
              //                   ),
              //                   textAlign: TextAlign.center,
              //                 ),
              //               ],
              //             ),
              //             Column(
              //               children: [
              //                 Row(
              //                   children: [
              //                     Text(
              //                       'Payment Confirmed',
              //                       style: TextStyle(
              //                         fontFamily: textFontFamily,
              //                         fontSize: 10,
              //                         color: const Color(0xff686868),
              //                       ),
              //                       textAlign: TextAlign.center,
              //                     ),
              //                     Icon(
              //                       Icons.check_circle,
              //                       size: 20,
              //                     ),
              //                   ],
              //                 ),
              //                 Text(
              //                   'Half Engine Overhaul',
              //                   style: TextStyle(
              //                     fontFamily: textFontFamily,
              //                     fontSize: 10,
              //                     color: const Color(0xffd33937),
              //                   ),
              //                   textAlign: TextAlign.center,
              //                 )
              //               ],
              //             ),
              //           ],
              //         ),
              //         Container(
              //           height: 5,
              //           decoration: BoxDecoration(
              //             color: const Color(0xffffffff),
              //           ),
              //         ),
              //         Text(
              //           'Service Complete',
              //           style: TextStyle(
              //             fontFamily: textFontFamily,
              //             fontSize: 12,
              //             color: const Color(0xff2dac00),
              //           ),
              //           textAlign: TextAlign.center,
              //         ),
              //         Container(
              //           height: 5,
              //           decoration: BoxDecoration(
              //             color: const Color(0xffffffff),
              //           ),
              //         ),
              //         RoundedCornerButton(
              //           onPressed: () {
              //             gotoScreen(
              //                 context: context,
              //                 screen: ServiceStatusScreen());
              //           },
              //           child: 'Need Help ?',
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // Neumorphic(
              //   style: NeumorphicStyle(
              //       shadowLightColorEmboss: Colors.white,
              //       shadowDarkColorEmboss: Colors.black,
              //       surfaceIntensity: 8,
              //       shadowDarkColor: Colors.black),
              //   child: Container(
              //     height: 200,
              //     padding: EdgeInsets.all(15),
              //     alignment: Alignment.center,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(5.0),
              //       gradient: LinearGradient(
              //         begin: Alignment(-1.0, -1.0),
              //         end: Alignment(1.01, 1.0),
              //         colors: [
              //           const Color(0xffeef0f5),
              //           const Color(0xffe6e9ef)
              //         ],
              //         stops: [0.0, 1.0],
              //       ),
              //       boxShadow: [
              //         BoxShadow(
              //           color: const Color(0xb2a6b4c8),
              //           offset: Offset(10, 10),
              //           blurRadius: 48,
              //         ),
              //       ],
              //     ),
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Text(
              //               '30/03/2021',
              //               style: TextStyle(
              //                 fontFamily: textFontFamily,
              //                 fontSize: 14,
              //                 color: const Color(0xff000000),
              //                 height: 1,
              //               ),
              //               textHeightBehavior: TextHeightBehavior(
              //                   applyHeightToFirstAscent: false),
              //               textAlign: TextAlign.left,
              //             ),
              //             Text(
              //               '03:45 pm',
              //               style: TextStyle(
              //                 fontFamily: textFontFamily,
              //                 fontSize: 14,
              //                 color: const Color(0xff000000),
              //                 height: 1,
              //               ),
              //               textHeightBehavior: TextHeightBehavior(
              //                   applyHeightToFirstAscent: false),
              //               textAlign: TextAlign.left,
              //             )
              //           ],
              //         ),
              //         Container(
              //           height: 5,
              //           decoration: BoxDecoration(
              //             color: const Color(0xffffffff),
              //           ),
              //         ),
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Image.asset('assets/icons/ktm_icon.png'),
              //             Column(
              //               children: [
              //                 Text(
              //                   'KTM 200 Duke',
              //                   style: TextStyle(
              //                     fontFamily: textFontFamily,
              //                     fontSize: 14,
              //                     color: const Color(0xff000000),
              //                   ),
              //                   textAlign: TextAlign.center,
              //                 ),
              //                 Text(
              //                   'NA',
              //                   style: TextStyle(
              //                     fontFamily: textFontFamily,
              //                     fontSize: 10,
              //                     color: const Color(0xff686868),
              //                   ),
              //                   textAlign: TextAlign.center,
              //                 ),
              //               ],
              //             ),
              //             Column(
              //               children: [
              //                 Row(
              //                   children: [
              //                     Text(
              //                       'Payment Confirmed',
              //                       style: TextStyle(
              //                         fontFamily: textFontFamily,
              //                         fontSize: 10,
              //                         color: const Color(0xff686868),
              //                       ),
              //                       textAlign: TextAlign.center,
              //                     ),
              //                     Icon(
              //                       Icons.check_circle,
              //                       size: 20,
              //                     ),
              //                   ],
              //                 ),
              //                 Text(
              //                   'Half Engine Overhaul',
              //                   style: TextStyle(
              //                     fontFamily: textFontFamily,
              //                     fontSize: 10,
              //                     color: const Color(0xffd33937),
              //                   ),
              //                   textAlign: TextAlign.center,
              //                 )
              //               ],
              //             ),
              //           ],
              //         ),
              //         Container(
              //           height: 5,
              //           decoration: BoxDecoration(
              //             color: const Color(0xffffffff),
              //           ),
              //         ),
              //         Text(
              //           'Service Complete',
              //           style: TextStyle(
              //             fontFamily: textFontFamily,
              //             fontSize: 12,
              //             color: const Color(0xff2dac00),
              //           ),
              //           textAlign: TextAlign.center,
              //         ),
              //         Container(
              //           height: 5,
              //           decoration: BoxDecoration(
              //             color: const Color(0xffffffff),
              //           ),
              //         ),
              //         RoundedCornerButton(
              //           onPressed: () {
              //             gotoScreen(
              //                 context: context,
              //                 screen: ServiceStatusScreen());
              //           },
              //           child: 'Need Help ?',
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // Neumorphic(
              //   style: NeumorphicStyle(
              //       shadowLightColorEmboss: Colors.white,
              //       shadowDarkColorEmboss: Colors.black,
              //       surfaceIntensity: 8,
              //       shadowDarkColor: Colors.black),
              //   child: Container(
              //     height: 200,
              //     padding: EdgeInsets.all(15),
              //     alignment: Alignment.center,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(5.0),
              //       gradient: LinearGradient(
              //         begin: Alignment(-1.0, -1.0),
              //         end: Alignment(1.01, 1.0),
              //         colors: [
              //           const Color(0xffeef0f5),
              //           const Color(0xffe6e9ef)
              //         ],
              //         stops: [0.0, 1.0],
              //       ),
              //       boxShadow: [
              //         BoxShadow(
              //           color: const Color(0xb2a6b4c8),
              //           offset: Offset(10, 10),
              //           blurRadius: 48,
              //         ),
              //       ],
              //     ),
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Text(
              //               '30/03/2021',
              //               style: TextStyle(
              //                 fontFamily: textFontFamily,
              //                 fontSize: 14,
              //                 color: const Color(0xff000000),
              //                 height: 1,
              //               ),
              //               textHeightBehavior: TextHeightBehavior(
              //                   applyHeightToFirstAscent: false),
              //               textAlign: TextAlign.left,
              //             ),
              //             Text(
              //               '03:45 pm',
              //               style: TextStyle(
              //                 fontFamily: textFontFamily,
              //                 fontSize: 14,
              //                 color: const Color(0xff000000),
              //                 height: 1,
              //               ),
              //               textHeightBehavior: TextHeightBehavior(
              //                   applyHeightToFirstAscent: false),
              //               textAlign: TextAlign.left,
              //             )
              //           ],
              //         ),
              //         Container(
              //           height: 5,
              //           decoration: BoxDecoration(
              //             color: const Color(0xffffffff),
              //           ),
              //         ),
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Image.asset('assets/icons/ktm_icon.png'),
              //             Column(
              //               children: [
              //                 Text(
              //                   'KTM 200 Duke',
              //                   style: TextStyle(
              //                     fontFamily: textFontFamily,
              //                     fontSize: 14,
              //                     color: const Color(0xff000000),
              //                   ),
              //                   textAlign: TextAlign.center,
              //                 ),
              //                 Text(
              //                   'NA',
              //                   style: TextStyle(
              //                     fontFamily: textFontFamily,
              //                     fontSize: 10,
              //                     color: const Color(0xff686868),
              //                   ),
              //                   textAlign: TextAlign.center,
              //                 ),
              //               ],
              //             ),
              //             Column(
              //               children: [
              //                 Row(
              //                   children: [
              //                     Text(
              //                       'Payment Confirmed',
              //                       style: TextStyle(
              //                         fontFamily: textFontFamily,
              //                         fontSize: 10,
              //                         color: const Color(0xff686868),
              //                       ),
              //                       textAlign: TextAlign.center,
              //                     ),
              //                     Icon(
              //                       Icons.check_circle,
              //                       size: 20,
              //                     ),
              //                   ],
              //                 ),
              //                 Text(
              //                   'Half Engine Overhaul',
              //                   style: TextStyle(
              //                     fontFamily: textFontFamily,
              //                     fontSize: 10,
              //                     color: const Color(0xffd33937),
              //                   ),
              //                   textAlign: TextAlign.center,
              //                 )
              //               ],
              //             ),
              //           ],
              //         ),
              //         Container(
              //           height: 5,
              //           decoration: BoxDecoration(
              //             color: const Color(0xffffffff),
              //           ),
              //         ),
              //         Text(
              //           'Service Complete',
              //           style: TextStyle(
              //             fontFamily: textFontFamily,
              //             fontSize: 12,
              //             color: const Color(0xff2dac00),
              //           ),
              //           textAlign: TextAlign.center,
              //         ),
              //         Container(
              //           height: 5,
              //           decoration: BoxDecoration(
              //             color: const Color(0xffffffff),
              //           ),
              //         ),
              //         RoundedCornerButton(
              //           onPressed: () {
              //             gotoScreen(
              //                 context: context,
              //                 screen: ServiceStatusScreen());
              //           },
              //           child: 'Need Help ?',
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // Neumorphic(
              //   style: NeumorphicStyle(
              //       shadowLightColorEmboss: Colors.white,
              //       shadowDarkColorEmboss: Colors.black,
              //       surfaceIntensity: 8,
              //       shadowDarkColor: Colors.black),
              //   child: Container(
              //     height: 200,
              //     padding: EdgeInsets.all(15),
              //     alignment: Alignment.center,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(5.0),
              //       gradient: LinearGradient(
              //         begin: Alignment(-1.0, -1.0),
              //         end: Alignment(1.01, 1.0),
              //         colors: [
              //           const Color(0xffeef0f5),
              //           const Color(0xffe6e9ef)
              //         ],
              //         stops: [0.0, 1.0],
              //       ),
              //       boxShadow: [
              //         BoxShadow(
              //           color: const Color(0xb2a6b4c8),
              //           offset: Offset(10, 10),
              //           blurRadius: 48,
              //         ),
              //       ],
              //     ),
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Text(
              //               '30/03/2021',
              //               style: TextStyle(
              //                 fontFamily: textFontFamily,
              //                 fontSize: 14,
              //                 color: const Color(0xff000000),
              //                 height: 1,
              //               ),
              //               textHeightBehavior: TextHeightBehavior(
              //                   applyHeightToFirstAscent: false),
              //               textAlign: TextAlign.left,
              //             ),
              //             Text(
              //               '03:45 pm',
              //               style: TextStyle(
              //                 fontFamily: textFontFamily,
              //                 fontSize: 14,
              //                 color: const Color(0xff000000),
              //                 height: 1,
              //               ),
              //               textHeightBehavior: TextHeightBehavior(
              //                   applyHeightToFirstAscent: false),
              //               textAlign: TextAlign.left,
              //             )
              //           ],
              //         ),
              //         Container(
              //           height: 5,
              //           decoration: BoxDecoration(
              //             color: const Color(0xffffffff),
              //           ),
              //         ),
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Image.asset('assets/icons/ktm_icon.png'),
              //             Column(
              //               children: [
              //                 Text(
              //                   'KTM 200 Duke',
              //                   style: TextStyle(
              //                     fontFamily: textFontFamily,
              //                     fontSize: 14,
              //                     color: const Color(0xff000000),
              //                   ),
              //                   textAlign: TextAlign.center,
              //                 ),
              //                 Text(
              //                   'NA',
              //                   style: TextStyle(
              //                     fontFamily: textFontFamily,
              //                     fontSize: 10,
              //                     color: const Color(0xff686868),
              //                   ),
              //                   textAlign: TextAlign.center,
              //                 ),
              //               ],
              //             ),
              //             Column(
              //               children: [
              //                 Row(
              //                   children: [
              //                     Text(
              //                       'Payment Confirmed',
              //                       style: TextStyle(
              //                         fontFamily: textFontFamily,
              //                         fontSize: 10,
              //                         color: const Color(0xff686868),
              //                       ),
              //                       textAlign: TextAlign.center,
              //                     ),
              //                     Icon(
              //                       Icons.check_circle,
              //                       size: 20,
              //                     ),
              //                   ],
              //                 ),
              //                 Text(
              //                   'Half Engine Overhaul',
              //                   style: TextStyle(
              //                     fontFamily: textFontFamily,
              //                     fontSize: 10,
              //                     color: const Color(0xffd33937),
              //                   ),
              //                   textAlign: TextAlign.center,
              //                 )
              //               ],
              //             ),
              //           ],
              //         ),
              //         Container(
              //           height: 5,
              //           decoration: BoxDecoration(
              //             color: const Color(0xffffffff),
              //           ),
              //         ),
              //         Text(
              //           'Service Complete',
              //           style: TextStyle(
              //             fontFamily: textFontFamily,
              //             fontSize: 12,
              //             color: const Color(0xff2dac00),
              //           ),
              //           textAlign: TextAlign.center,
              //         ),
              //         Container(
              //           height: 5,
              //           decoration: BoxDecoration(
              //             color: const Color(0xffffffff),
              //           ),
              //         ),
              //         RoundedCornerButton(
              //           onPressed: () {
              //             gotoScreen(
              //                 context: context,
              //                 screen: ServiceStatusScreen());
              //           },
              //           child: 'Need Help ?',
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

/// This class Design for create single My Booking Items, user pass variable data only
/// create a screen Box if Service is Complete. and ask for any Need Help?
/// Show Details of Service Complete.
class SingleItemOfServiceCompleteInMyBooking extends StatefulWidget {
  // const DetailsOfSingleBookingItem({Key? key}) : super(key: key);

  final String bikeDetaildate;
  final String bikeDetailtime;
  final String bikeDetailbikeLogo;
  final String bikeDetailBikeName;
  final String bikeDetailitemsDetails;
  final String bikeDetailProblem;
  final String bikeDetailpaymentConfirmed;
  final String bikeDetailHalfEngineOverhaul;
  final String bikeDetailServiceComplete;

  ///icon
  final IconData bikeDetailIconforverified;

  const SingleItemOfServiceCompleteInMyBooking(
      {Key? key,
      required this.bikeDetaildate,
      required this.bikeDetailtime,
      required this.bikeDetailbikeLogo,
      required this.bikeDetailBikeName,
      required this.bikeDetailitemsDetails,
      required this.bikeDetailProblem,
      required this.bikeDetailpaymentConfirmed,
      required this.bikeDetailHalfEngineOverhaul,
      required this.bikeDetailServiceComplete,
      required this.bikeDetailIconforverified})
      : super(key: key);

  @override
  _SingleItemOfServiceCompleteInMyBookingState createState() =>
      _SingleItemOfServiceCompleteInMyBookingState();
}

class _SingleItemOfServiceCompleteInMyBookingState
    extends State<SingleItemOfServiceCompleteInMyBooking> {
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
          // shadowLightColorEmboss: Colors.white,
          // shadowDarkColorEmboss: Colors.black,
          // surfaceIntensity: 8,
          shadowDarkColor: Colors.black.withOpacity(0.6),
          depth: 7,
          shape: NeumorphicShape.flat,
          // shadowDarkColor: Colors.black12,
          shadowLightColor: Colors.white,
          shadowDarkColorEmboss: Colors.black.withOpacity(0.8),
      ),
      child: Container(
        height: 200,
        padding: EdgeInsets.all(15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          gradient: LinearGradient(
            begin: Alignment(-1.0, -1.0),
            end: Alignment(1.01, 1.0),
            colors: [const Color(0xffeef0f5), const Color(0xffe6e9ef)],
            stops: [0.0, 1.0],
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xb2a6b4c8),
              offset: Offset(10, 10),
              blurRadius: 48,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Date
                Text(
                  widget.bikeDetaildate,
                  style: TextStyle(
                    fontFamily: textFontFamily,
                    fontSize: 14,
                    color: const Color(0xff000000),
                    height: 1,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                ),

                /// Time
                Text(
                  widget.bikeDetailtime,
                  style: TextStyle(
                    fontFamily: textFontFamily,
                    fontSize: 14,
                    color: const Color(0xff000000),
                    height: 1,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                )
              ],
            ),

            ///Divider
            DividerCustom(),
            // Container(
            //   height: 5,
            //   decoration: BoxDecoration(
            //     color: const Color(0xffffffff),
            //   ),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// bike Logo
                Image.asset(widget.bikeDetailbikeLogo),

                Column(
                  children: [
                    /// Bike Name and problem name
                    Text(
                      widget.bikeDetailBikeName + widget.bikeDetailitemsDetails,
                      style: TextStyle(
                        fontFamily: textFontFamily,
                        fontSize: 14,
                        color: const Color(0xff000000),
                      ),
                      textAlign: TextAlign.center,
                    ),

                    /// Detail of Problem
                    Text(
                      widget.bikeDetailProblem,
                      style: TextStyle(
                        fontFamily: textFontFamily,
                        fontSize: 10,
                        color: const Color(0xff686868),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        /// payment Confirmed
                        Text(
                          widget.bikeDetailpaymentConfirmed,
                          style: TextStyle(
                            fontFamily: textFontFamily,
                            fontSize: 10,
                            color: const Color(0xff686868),
                          ),
                          textAlign: TextAlign.center,
                        ),

                        ///Icon for verified
                        Icon(
                          // Icons.check_circle,
                          widget.bikeDetailIconforverified,
                          size: 20,
                        ),
                      ],
                    ),

                    /// Half Engine Overhaul
                    Text(
                      widget.bikeDetailHalfEngineOverhaul,
                      style: TextStyle(
                        fontFamily: textFontFamily,
                        fontSize: 10,
                        color: buttonColor,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ],
            ),
            DividerCustom(),

            ///Service Complete
            Text(
              widget.bikeDetailServiceComplete,
              style: TextStyle(
                fontFamily: textFontFamily,
                fontSize: 12,
                color: const Color(0xff2dac00),
              ),
              textAlign: TextAlign.center,
            ),

            DividerCustom(),

            /// Button Need Help
            RoundedCornerButton(
              onPressed: () {
                gotoScreen(context: context, screen: HelpAndSupportScreen());
              },
              child: buttonNameNeedHelp,
            ),
          ],
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////////////

/// This class Design for create single My Booking Items, user pass variable data only
/// create a screen Box if Service is NOT Complete. and ask for Connect or Cancel
/// Show Details of Awaiting Confirmation and Service is NOT Complete.
class SingleItemOfAwaitingConfirmationInMyBooking extends StatefulWidget {
  // const DetailsOfSingleBookingItem({Key? key}) : super(key: key);

  final String bikeDetaildate;
  final String bikeDetailtime;
  final String bikeDetailbikeLogo;
  final String bikeDetailBikeName;
  final String bikeDetailitemsDetails;
  final String bikeDetailProblem;
  final String bikeDetailpaymentConfirmed;
  final String bikeDetailHalfEngineOverhaul;
  final String bikeDetailsAwaitingConfirmations;

  ///icon
  final IconData bikeDetailIconforverified;

  const SingleItemOfAwaitingConfirmationInMyBooking(
      {Key? key,
      required this.bikeDetaildate,
      required this.bikeDetailtime,
      required this.bikeDetailbikeLogo,
      required this.bikeDetailBikeName,
      required this.bikeDetailitemsDetails,
      required this.bikeDetailProblem,
      required this.bikeDetailpaymentConfirmed,
      required this.bikeDetailHalfEngineOverhaul,
      required this.bikeDetailsAwaitingConfirmations,
      required this.bikeDetailIconforverified})
      : super(key: key);

  @override
  _SingleItemOfAwaitingConfirmationInMyBookingState createState() =>
      _SingleItemOfAwaitingConfirmationInMyBookingState();
}

class _SingleItemOfAwaitingConfirmationInMyBookingState
    extends State<SingleItemOfAwaitingConfirmationInMyBooking> {
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
          // shadowLightColorEmboss: Colors.white,
          // shadowDarkColorEmboss: Colors.black,
          // surfaceIntensity: 8,
          shadowDarkColor: Colors.black.withOpacity(0.6),
          depth: 7,
          shape: NeumorphicShape.flat,
          // shadowDarkColor: Colors.black12,
          shadowLightColor: Colors.white,
          shadowDarkColorEmboss: Colors.black.withOpacity(0.8)),
      child: Container(
        height: 200,
        padding: EdgeInsets.all(15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          gradient: LinearGradient(
            begin: Alignment(-1.0, -1.0),
            end: Alignment(1.01, 1.0),
            colors: [const Color(0xffeef0f5), const Color(0xffe6e9ef)],
            stops: [0.0, 1.0],
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xb2a6b4c8),
              offset: Offset(10, 10),
              blurRadius: 48,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Date
                Text(
                  widget.bikeDetaildate,
                  style: TextStyle(
                    fontFamily: textFontFamily,
                    fontSize: 14,
                    color: const Color(0xff000000),
                    height: 1,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                ),

                /// Time
                Text(
                  widget.bikeDetailtime,
                  style: TextStyle(
                    fontFamily: textFontFamily,
                    fontSize: 14,
                    color: const Color(0xff000000),
                    height: 1,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                )
              ],
            ),

            ///Divider
            DividerCustom(),
            // Container(
            //   height: 5,
            //   decoration: BoxDecoration(
            //     color: const Color(0xffffffff),
            //   ),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// bike Logo
                Image.asset(widget.bikeDetailbikeLogo),

                Column(
                  children: [
                    /// Bike Name and problem name
                    Text(
                      widget.bikeDetailBikeName + widget.bikeDetailitemsDetails,
                      style: TextStyle(
                        fontFamily: textFontFamily,
                        fontSize: 14,
                        color: const Color(0xff000000),
                      ),
                      textAlign: TextAlign.center,
                    ),

                    /// Detail of Problem
                    Text(
                      widget.bikeDetailProblem,
                      style: TextStyle(
                        fontFamily: textFontFamily,
                        fontSize: 10,
                        color: const Color(0xff686868),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        /// payment Confirmed
                        Text(
                          widget.bikeDetailpaymentConfirmed,
                          style: TextStyle(
                            fontFamily: textFontFamily,
                            fontSize: 10,
                            color: const Color(0xff686868),
                          ),
                          textAlign: TextAlign.center,
                        ),

                        ///Icon for verified
                        Icon(
                          // Icons.check_circle,
                          widget.bikeDetailIconforverified,
                          size: 20,
                        ),
                      ],
                    ),

                    /// Half Engine Overhaul
                    Text(
                      widget.bikeDetailHalfEngineOverhaul,
                      style: TextStyle(
                        fontFamily: textFontFamily,
                        fontSize: 10,
                        color: buttonColor,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ],
            ),
            DividerCustom(),

            ///Awaiting Confirmation
            Text(
              widget.bikeDetailsAwaitingConfirmations,
              style: TextStyle(
                fontFamily: textFontFamily,
                fontSize: 12,
                color: buttonColor,
              ),
              textAlign: TextAlign.center,
            ),

            DividerCustom(),

            /// Button Need Help
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallRoundedCornerButton(
                    onPressed: () {
                      gotoScreen(
                          context: context, screen: ServiceStatusScreen());
                    },
                    child: buttonNameConnect,
                    color: true,
                  ),
                  SmallRoundedCornerButton(
                    onPressed: () {
                      gotoScreen(
                          context: context, screen: HomeScreen());
                    },
                    child: buttonNameCancel,
                    color: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
