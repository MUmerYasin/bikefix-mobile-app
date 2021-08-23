import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/screens/login_screen.dart';
import 'package:two_wheel_vehicle/screens/navigator_helper.dart';
import 'package:two_wheel_vehicle/widgets.dart';

import '../config.dart';

class ServiceStatusScreen extends StatefulWidget {
  @override
  _ServiceStatusScreenState createState() => _ServiceStatusScreenState();
}

class _ServiceStatusScreenState extends State<ServiceStatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: backgroundColor,
        // leading: Image.asset('assets/icons/back_icon.png',fit: BoxFit.fill,),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          screenTitleStatusService,
          style: TextStyle(
            fontFamily: textFontFamily,
            fontSize: 18,
            color: Colors.black,
          ),
          textAlign: TextAlign.left,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all(15),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// Show Bike Details, Name, Details, bike Image
              BikeTitleDetailsHeading(
                  currentBikeName: companyNameKTM,
                  currentBikeDetails: bikeDetailsHundredDuke,
                  bikeImages: bikeImageImagePath),
              // Padding(
              //   padding: const EdgeInsets.only(top: 8.0, bottom: 10),
              //   child: Neumorphic(
              //     style: NeumorphicStyle(
              //         // shadowLightColorEmboss: Colors.white,
              //         // shadowDarkColorEmboss: Colors.black,
              //         // shadowDarkColor: Colors.black,
              //       shadowDarkColor: Colors.black.withOpacity(0.6),
              //       depth: 7,
              //       shape: NeumorphicShape.flat,
              //       // shadowDarkColor: Colors.black12,
              //       shadowLightColor: Colors.white,
              //       shadowDarkColorEmboss: Colors.black.withOpacity(0.8),
              //     ),
              //     child: Container(
              //       padding: EdgeInsets.all(15),
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(5.0),
              //         gradient: LinearGradient(
              //           begin: Alignment(-1.0, -1.0),
              //           end: Alignment(1.01, 1.0),
              //           colors: [
              //             const Color(0xffeef0f5),
              //             const Color(0xffe6e9ef)
              //           ],
              //           stops: [0.0, 1.0],
              //         ),
              //         boxShadow: [
              //           BoxShadow(
              //             color: const Color(0xb2a6b4c8),
              //             offset: Offset(10, 10),
              //             blurRadius: 48,
              //           ),
              //         ],
              //       ),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           ///Bike Name, Details,
              //           Text.rich(
              //             TextSpan(
              //               style: TextStyle(
              //                 fontFamily: textFontFamily,
              //                 fontSize: 18,
              //                 color: const Color(0xff000000),
              //               ),
              //               children: [
              //                 /// Bike Name
              //                 TextSpan(
              //                   text: companyNameKTM + '\n',
              //                 ),
              //                 TextSpan(
              //                   /// Bike Details
              //                   text: bikeDetailsHundredDuke,
              //                   style: TextStyle(
              //                     color: buttonColor,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             textHeightBehavior:
              //                 TextHeightBehavior(applyHeightToFirstAscent: false),
              //             textAlign: TextAlign.center,
              //           ),
              //           ///Bike Image
              //           Image.asset(bikeImageImagePath),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),

              ///Title Order Details
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Order Details',
                    style: TextStyle(
                      fontFamily: textFontFamily,
                      fontSize: 14,
                      color: const Color(0xff575656),
                      height: 1,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),

              ///Order Details, Booking, Pickup and Delivery Date and Time
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                child: Neumorphic(
                  style: NeumorphicStyle(
                    // shadowLightColorEmboss: Colors.white,
                    // shadowDarkColorEmboss: Colors.black,
                    // shadowDarkColor: Colors.black,
                    //
                    shadowDarkColor: Colors.black.withOpacity(0.6),
                    depth: 8,
                    shape: NeumorphicShape.flat,
                    // shadowDarkColor: Colors.black12,
                    shadowLightColor: Colors.white,
                    shadowDarkColorEmboss: Colors.black.withOpacity(0.8),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    // height: 160,
                    padding:
                        EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      gradient: LinearGradient(
                        begin: Alignment(-1.0, -1.0),
                        end: Alignment(1.01, 1.0),
                        colors: [
                          const Color(0xffeef0f5),
                          const Color(0xffe6e9ef)
                        ],
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 8.0,bottom: 10),
                        //   child: Container(
                        //     height: 5,
                        //     decoration: BoxDecoration(
                        //       color: const Color(0xffffffff),
                        //     ),
                        //   ),
                        // ),
                        SingleOrderDetailsProcess(
                            titleDetails: bookingDateTimeText,
                            timeAndDate: timeDateDescriptionText),
                        DividerCustom(),
                        SingleOrderDetailsProcess(
                            titleDetails: pickupDateTimeText,
                            timeAndDate: timeDateDescriptionText),
                        DividerCustom(),
                        SingleOrderDetailsProcess(
                            titleDetails: DeliveryDateTimeText,
                            timeAndDate: timeDateDescriptionText),
                        DividerCustom(),

                        ///Total Price Show
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                PriceWithTitleAndValueText,
                                style: TextStyle(
                                  fontFamily: textFontFamily,
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),

              ///FeedBack Button
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: RoundedCornerButton(
                    onPressed: () {
                      gotoScreen(context: context, screen: LoginScreen());
                    },
                    child: buttonNameFeedback,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Show Bike Details, Name, Details, bike Image
class BikeTitleDetailsHeading extends StatefulWidget {
  // const BikeTitleDetailsHeading({Key? key}) : super(key: key);

  final String currentBikeName;
  final String currentBikeDetails;
  final String bikeImages;

  const BikeTitleDetailsHeading(
      {Key? key,
        required this.currentBikeName,
        required this.currentBikeDetails,
        required this.bikeImages})
      : super(key: key);

  @override
  _BikeTitleDetailsHeadingState createState() =>
      _BikeTitleDetailsHeadingState();
}

class _BikeTitleDetailsHeadingState extends State<BikeTitleDetailsHeading> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 10),
      child: Neumorphic(
        style: NeumorphicStyle(
          // shadowLightColorEmboss: Colors.white,
          // shadowDarkColorEmboss: Colors.black,
          // shadowDarkColor: Colors.black,
          shadowDarkColor: Colors.black.withOpacity(0.6),
          depth: 7,
          shape: NeumorphicShape.flat,
          // shadowDarkColor: Colors.black12,
          shadowLightColor: Colors.white,
          shadowDarkColorEmboss: Colors.black.withOpacity(0.8),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 25.0),
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ///Bike Name, Details,
              Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: textFontFamily,
                    fontSize: 18,
                    color: const Color(0xff000000),
                  ),
                  children: [
                    /// Bike Name
                    TextSpan(
                      text: widget.currentBikeName + '\n',
                    ),
                    TextSpan(
                      /// Bike Details
                      text: widget.currentBikeDetails,
                      style: TextStyle(
                        color: buttonColor,
                      ),
                    ),
                  ],
                ),
                textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
              ),

              ///Bike Image
              Image.asset(widget.bikeImages),
            ],
          ),
        ),
      ),
    );
  }
}



///Order Details, Booking, Pickup and Delivery Date and Time
class SingleOrderDetailsProcess extends StatefulWidget {
  // const SingleOrderDetailsProcess({Key? key}) : super(key: key);
  final String titleDetails;
  final String timeAndDate;

  const SingleOrderDetailsProcess(
      {Key? key, required this.titleDetails, required this.timeAndDate})
      : super(key: key);

  @override
  _SingleOrderDetailsProcessState createState() =>
      _SingleOrderDetailsProcessState();
}

class _SingleOrderDetailsProcessState extends State<SingleOrderDetailsProcess> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ///Booking date & time
                widget.titleDetails,
                style: TextStyle(
                  fontFamily: textFontFamily,
                  fontSize: 14,
                  color: const Color(0xff686868),
                  height: 1,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 2, 8, 16),
              child: Text(
                ///time and Date Description
                widget.timeAndDate,
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
            ),
          ],
        ),
      ],
    );
  }
}


