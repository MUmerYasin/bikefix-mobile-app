import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/widgets.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:timeline_tile/timeline_tile.dart' as prefix;
import '../config.dart';


class TrackOrderScreen extends StatefulWidget {
  @override
  _TrackOrderScreenState createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ScreenBackgroundColor,
      appBar: AppBar(
        elevation: 0.0,
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
          screenTitleTrackOrder,
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
        // physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              ///Order ID, Service Center, Require Pickup,
              Padding(
                padding: const EdgeInsets.only(top: 4.0, bottom: 10, ),
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(left: 16.0,right: 16.0, top: 8.0,bottom: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                ///OrderID
                                trackOrderScreenOrderID,
                                style: TextStyle(
                                  fontFamily: textFontFamily,
                                  fontSize: 14,
                                  color: const Color(0xff686868),
                                  height: 1,
                                ),
                                textHeightBehavior:
                                TextHeightBehavior(applyHeightToFirstAscent: false),
                                // textAlign: TextAlign.left,
                              ),

                              Text(
                                ///Order ID Value
                                trackOrderScreenOrderIDValue,
                                style: TextStyle(
                                  fontFamily: textFontFamily,
                                  fontSize: 14,
                                  color: const Color(0xff000000),
                                  height: 1,
                                ),
                                textHeightBehavior:
                                TextHeightBehavior(applyHeightToFirstAscent: false),
                                // textAlign: TextAlign.left,
                              ),

                            ],
                          ),
                        ),

                        DividerCustom(),

                        Padding(
                          padding: const EdgeInsets.only(left: 16.0,right: 16.0, top: 8.0,bottom: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                ///Service Center
                                trackOrderScreenServiceCenter,
                                style: TextStyle(
                                  fontFamily: textFontFamily,
                                  fontSize: 14,
                                  color: const Color(0xff686868),
                                  height: 1,
                                ),
                                textHeightBehavior:
                                TextHeightBehavior(applyHeightToFirstAscent: false),
                                // textAlign: TextAlign.left,
                              ),

                              Text(
                                ///Service Center Value
                                trackOrderScreenServiceCenterValue,
                                style: TextStyle(
                                  fontFamily: textFontFamily,
                                  fontSize: 14,
                                  color: const Color(0xff000000),
                                  height: 1,
                                ),
                                textHeightBehavior:
                                TextHeightBehavior(applyHeightToFirstAscent: false),
                                // textAlign: TextAlign.left,
                              ),

                            ],
                          ),
                        ),

                        DividerCustom(),

                        Padding(
                          padding: const EdgeInsets.only(left: 16.0,right: 16.0, top: 8.0,bottom: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                ///Require Pickup
                                trackOrderScreenRequirePickup,
                                style: TextStyle(
                                  fontFamily: textFontFamily,
                                  fontSize: 14,
                                  color: Colors.black,
                                  height: 1,
                                ),
                                textHeightBehavior:
                                TextHeightBehavior(applyHeightToFirstAscent: false),
                                // textAlign: TextAlign.left,
                              ),
                              ///Tick Icon
                              Image.asset(
                                tickTrackOrderScreenImagePath,
                                width: 20.0,
                                height: 20.0,
                                fit: BoxFit.contain,
                              ),

                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),


              ///Track Details
              Padding(
                padding: const EdgeInsets.only(top: 8.0,left: 25.0, bottom: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    trackOrderScreenTrackDetails,
                    style: TextStyle(
                      fontFamily: textFontFamily,
                      fontSize: 15,
                      color: const Color(0xff575656),
                      height: 1,
                    ),
                    textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),

              /// Track Order Check List
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
                    padding: EdgeInsets.only(bottom: 4.0,top: 4.0),
                    width: MediaQuery.of(context).size.width,
                    // height: 400,

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
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        // Padding(
                        //   padding: const EdgeInsets.only(left: 16.0,right: 16.0, top: 8.0,bottom: 16.0),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       Text(
                        //         ///OrderID
                        //         trackOrderScreenOrderID,
                        //         style: TextStyle(
                        //           fontFamily: textFontFamily,
                        //           fontSize: 14,
                        //           color: const Color(0xff686868),
                        //           height: 1,
                        //         ),
                        //         textHeightBehavior:
                        //         TextHeightBehavior(applyHeightToFirstAscent: false),
                        //         // textAlign: TextAlign.left,
                        //       ),
                        //
                        //       Text(
                        //         ///Order ID Value
                        //         trackOrderScreenOrderIDValue,
                        //         style: TextStyle(
                        //           fontFamily: textFontFamily,
                        //           fontSize: 14,
                        //           color: const Color(0xff000000),
                        //           height: 1,
                        //         ),
                        //         textHeightBehavior:
                        //         TextHeightBehavior(applyHeightToFirstAscent: false),
                        //         // textAlign: TextAlign.left,
                        //       ),
                        //
                        //     ],
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 16.0,right: 16.0, top: 8.0,bottom: 16.0),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       Text(
                        //         ///Service Center
                        //         trackOrderScreenServiceCenter,
                        //         style: TextStyle(
                        //           fontFamily: textFontFamily,
                        //           fontSize: 14,
                        //           color: const Color(0xff686868),
                        //           height: 1,
                        //         ),
                        //         textHeightBehavior:
                        //         TextHeightBehavior(applyHeightToFirstAscent: false),
                        //         // textAlign: TextAlign.left,
                        //       ),
                        //
                        //       Text(
                        //         ///Service Center Value
                        //         trackOrderScreenServiceCenterValue,
                        //         style: TextStyle(
                        //           fontFamily: textFontFamily,
                        //           fontSize: 14,
                        //           color: const Color(0xff000000),
                        //           height: 1,
                        //         ),
                        //         textHeightBehavior:
                        //         TextHeightBehavior(applyHeightToFirstAscent: false),
                        //         // textAlign: TextAlign.left,
                        //       ),
                        //
                        //     ],
                        //   ),
                        // ),

                        // Padding(
                        //   padding: const EdgeInsets.only(left: 16.0,right: 16.0, top: 8.0,bottom: 16.0),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       Text(
                        //         ///Require Pickup
                        //         trackOrderScreenRequirePickup,
                        //         style: TextStyle(
                        //           fontFamily: textFontFamily,
                        //           fontSize: 14,
                        //           color: const Color(0xff686868),
                        //           height: 1,
                        //         ),
                        //         textHeightBehavior:
                        //         TextHeightBehavior(applyHeightToFirstAscent: false),
                        //         // textAlign: TextAlign.left,
                        //       ),
                        //       ///Tick Icon
                        //       Image.asset(
                        //         tickTrackOrderScreenImagePath,
                        //         width: 20.0,
                        //         height: 20.0,
                        //         fit: BoxFit.contain,
                        //       ),
                        //
                        //     ],
                        //   ),
                        // ),


                        // Simple use
                        // SizedBox(
                        //   height: 300.0,
                        //   child: ListView.builder(
                        //     itemBuilder: (BuildContext context, int index) {
                        //       return new Stack(
                        //         children: <Widget>[
                        //           new Padding(
                        //             padding: const EdgeInsets.only(left: 50.0),
                        //             child: new Card(
                        //               margin: new EdgeInsets.all(20.0),
                        //               child: new Container(
                        //                 width: double.infinity,
                        //                 height: 200.0,
                        //                 color: Colors.green,
                        //               ),
                        //             ),
                        //           ),
                        //           new Positioned(
                        //             top: 0.0,
                        //             bottom: 0.0,
                        //             left: 35.0,
                        //             child: new Container(
                        //               height: double.infinity,
                        //               width: 1.0,
                        //               color: Colors.blue,
                        //             ),
                        //           ),
                        //
                        //           new Positioned(
                        //             top: 100.0,
                        //             left: 15.0,
                        //             child: new Container(
                        //               height: 40.0,
                        //               width: 40.0,
                        //               decoration: new BoxDecoration(
                        //                 shape: BoxShape.circle,
                        //                 color: Colors.white,
                        //               ),
                        //               child: new Container(
                        //                 margin: new EdgeInsets.all(5.0),
                        //                 height: 30.0,
                        //                 width: 30.0,
                        //                 decoration: new BoxDecoration(
                        //                     shape: BoxShape.circle,
                        //                     color: Colors.red),
                        //               ),
                        //             ),
                        //           )
                        //         ],
                        //       );
                        //     },
                        //     itemCount: 5,
                        //   ),
                        // ),

                        /// Start of time line of Track Order
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          /// Stack
                          child: Stack(
                            alignment : AlignmentDirectional.bottomCenter,
                            children: <Widget>[
                              ///Custom Divider
                              DividerCustom(),
                              /// Draw TimeLine
                              TimelineTile(
                                isFirst: true,
                                hasIndicator:true,
                                indicatorStyle :  prefix.IndicatorStyle(
                                  width: 28,
                                  height: 28.0,
                                  // color: Colors.black,
                                  indicator:Container(
                                    /// Image in Indicator or Circular
                                    child: Image.asset(
                                      tickTrackOrderScreenImagePath,
                                      width: 28.0,
                                      height: 28.0,
                                      fit: BoxFit.cover,
                                    ),

                                  ),
                                  ///Background Color of Indicator
                                  color : Color(0xff2DAC00),
                                ),
                                /// Indicator vertical Line Color and width
                                beforeLineStyle :  LineStyle(color : Color(0xff2DAC00).withOpacity(0.4),thickness:6,),
                                afterLineStyle :  LineStyle(color : Color(0xff2DAC00).withOpacity(0.4),thickness:6,),
                                ///Indicator distance from left side of border
                                alignment: TimelineAlign.manual,
                                lineXY: 0.3,
                                /// Data show after Indicator
                                endChild: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0,right: 0.0, top: 0.0,bottom: 0.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        /// track Order Screen Time Line Text
                                        Text(
                                          trackOrderScreenTimeLineText1,
                                          style: TextStyle(
                                            fontFamily: textFontFamily,
                                            fontSize: 10,
                                            color: const Color(0xff000000),
                                            // height: 1,
                                          ),
                                          textHeightBehavior:
                                          TextHeightBehavior(applyHeightToFirstAscent: false),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                  constraints: const BoxConstraints(
                                    minHeight: 50,
                                  ),
                                  // color: Colors.black,
                                ),

                                /// Data show Before Indicator
                                startChild: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 4.0,right: 0.0, top: 4.0,bottom: 0.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        ///Time For Track Start
                                        Text(
                                          trackOrderScreenTime,
                                          style: TextStyle(
                                            fontFamily: textFontFamily,
                                            fontSize: 10,
                                            color: const Color(0xff686868),
                                            height: 1,
                                          ),
                                          textHeightBehavior:
                                          TextHeightBehavior(applyHeightToFirstAscent: false),
                                          textAlign: TextAlign.left,
                                        ),
                                        ///Date For Track Start
                                        Text(

                                          trackOrderScreenDate,
                                          style: TextStyle(
                                            fontFamily: textFontFamily,
                                            fontSize: 10,
                                            color: const Color(0xff000000),
                                            height: 1,
                                          ),
                                          textHeightBehavior:
                                          TextHeightBehavior(applyHeightToFirstAscent: false),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),


                                  // color: Colors.amberAccent,
                                ),
                              ),

                            ],
                          ),
                        ),
                        // TimelineDivider(),
                        ///  states between of start and end time line of Track Order
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          /// Stack
                          child: Stack(
                            alignment : AlignmentDirectional.bottomCenter,
                            children: <Widget>[
                              ///Custom Divider
                              DividerCustom(),
                              /// Draw TimeLine
                              TimelineTile(
                                hasIndicator:true,
                                indicatorStyle :  prefix.IndicatorStyle(
                                  width: 28,
                                  height: 28.0,
                                  // color: Colors.black,
                                  indicator:Container(
                                    /// Image in Indicator or Circular
                                    child: Image.asset(
                                      tickSecondTrackOrderScreenImagePath,
                                      width: 28.0,
                                      height: 28.0,
                                      fit: BoxFit.cover,
                                    ),

                                  ),
                                  ///Background Color of Indicator
                                  color : Color(0xff2DAC00),
                                ),
                                /// Indicator vertical Line Color and width
                                beforeLineStyle :  LineStyle(color : Color(0xff2DAC00).withOpacity(0.4),thickness:6,),
                                afterLineStyle :  LineStyle(color : Color(0xff2DAC00).withOpacity(0.4),thickness:6,),
                                ///Indicator distance from left side of border
                                alignment: TimelineAlign.manual,
                                lineXY: 0.3,
                                /// Data show after Indicator
                                endChild: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0,right: 0.0, top: 0.0,bottom: 0.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        /// track Order Screen Time Line Text
                                        Text(
                                          trackOrderScreenTimeLineText2,
                                          style: TextStyle(
                                            fontFamily: textFontFamily,
                                            fontSize: 10,
                                            color: const Color(0xff000000),
                                            // height: 1,
                                          ),
                                          textHeightBehavior:
                                          TextHeightBehavior(applyHeightToFirstAscent: false),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                  constraints: const BoxConstraints(
                                    minHeight: 50,
                                  ),
                                  // color: Colors.black,
                                ),
                                /// Data show Before Indicator
                                startChild: Container(
                                  // color: Colors.amberAccent,
                                ),
                              ),

                            ],
                          ),
                        ),
                        ///  states between of start and end time line of Track Order
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          /// Stack
                          child: Stack(
                            alignment : AlignmentDirectional.bottomCenter,
                            children: <Widget>[
                              ///Custom Divider
                              DividerCustom(),
                              /// Draw TimeLine
                              TimelineTile(
                                hasIndicator:true,
                                indicatorStyle :  prefix.IndicatorStyle(
                                  width: 28,
                                  height: 28.0,
                                  // color: Colors.black,
                                  indicator:Container(
                                    /// Image in Indicator or Circular
                                    child: Image.asset(
                                      pickYourVehicleTrackOrderScreenImagePath,
                                      width: 28.0,
                                      height: 28.0,
                                      fit: BoxFit.cover,
                                    ),

                                  ),
                                  ///Background Color of Indicator
                                  color : Color(0xff2DAC00),
                                ),
                                /// Indicator vertical Line Color and width
                                beforeLineStyle :  LineStyle(color : Color(0xff2DAC00).withOpacity(0.4),thickness:6,),
                                afterLineStyle :  LineStyle(color : Color(0xff2DAC00).withOpacity(0.4),thickness:6,),
                                ///Indicator distance from left side of border
                                alignment: TimelineAlign.manual,
                                lineXY: 0.3,
                                /// Data show after Indicator
                                endChild: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0,right: 0.0, top: 16.0,bottom: 0.0),
                                    child: Text(
                                      trackOrderScreenTimeLineText3,
                                      style: TextStyle(
                                        fontFamily: textFontFamily,
                                        fontSize: 10,
                                        color: const Color(0xff000000),
                                        // height: 1,
                                      ),
                                      softWrap:true,
                                      // overflow: TextOverflow.ellipsis,
                                      textHeightBehavior:
                                      TextHeightBehavior(applyHeightToFirstAscent: false),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  constraints: const BoxConstraints(
                                    minHeight: 50,
                                  ),
                                  // color: Colors.black,
                                ),
                                /// Data show Before Indicator
                                startChild: Container(
                                  // color: Colors.amberAccent,
                                ),
                              ),

                            ],
                          ),
                        ),
                        ///  states between of start and end time line of Track Order
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          /// Stack
                          child: Stack(
                            alignment : AlignmentDirectional.bottomCenter,
                            children: <Widget>[
                              ///Custom Divider
                              DividerCustom(),
                              /// Draw TimeLine
                              TimelineTile(
                                hasIndicator:true,
                                indicatorStyle :  prefix.IndicatorStyle(
                                  width: 28,
                                  height: 28.0,
                                  // color: Colors.black,
                                  indicator:Container(
                                    /// Image in Indicator or Circular
                                    child: Image.asset(
                                      vehiclePickedUpTrackOrderScreenImagePath,
                                      width: 28.0,
                                      height: 28.0,
                                      fit: BoxFit.cover,
                                    ),

                                  ),
                                  ///Background Color of Indicator
                                  color : Color(0xff2DAC00),
                                ),
                                /// Indicator vertical Line Color and width
                                beforeLineStyle :  LineStyle(color : Color(0xff2DAC00).withOpacity(0.4),thickness:6,),
                                afterLineStyle :  LineStyle(color : Color(0xff2DAC00).withOpacity(0.4),thickness:6,),
                                ///Indicator distance from left side of border
                                alignment: TimelineAlign.manual,
                                lineXY: 0.3,
                                /// Data show after Indicator
                                endChild: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0,right: 0.0, top: 0.0,bottom: 0.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        /// track Order Screen Time Line Text
                                        Text(
                                          trackOrderScreenTimeLineText4,
                                          style: TextStyle(
                                            fontFamily: textFontFamily,
                                            fontSize: 10,
                                            color: const Color(0xff000000),
                                            // height: 1,
                                          ),
                                          textHeightBehavior:
                                          TextHeightBehavior(applyHeightToFirstAscent: false),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                  constraints: const BoxConstraints(
                                    minHeight: 50,
                                  ),
                                  // color: Colors.black,
                                ),
                                /// Data show Before Indicator
                                startChild: Container(
                                  // color: Colors.amberAccent,
                                ),
                              ),

                            ],
                          ),
                        ),






                        ///  states between of start and end time line of Track Order
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          /// Stack
                          child: Stack(
                            alignment : AlignmentDirectional.bottomCenter,
                            children: <Widget>[
                              ///Custom Divider
                              DividerCustom(),
                              /// Draw TimeLine
                              TimelineTile(
                                hasIndicator:true,
                                indicatorStyle :  prefix.IndicatorStyle(
                                  width: 28,
                                  height: 28.0,
                                  // color: Colors.black,
                                  indicator:Container(
                                    /// Image in Indicator or Circular
                                    child: Image.asset(
                                      servicingTrackOrderScreenImagePath,
                                      width: 28.0,
                                      height: 28.0,
                                      fit: BoxFit.cover,
                                    ),

                                  ),
                                  ///Background Color of Indicator
                                  color : Color(0xff2DAC00),
                                ),
                                /// Indicator vertical Line Color and width
                                beforeLineStyle :  LineStyle(color : Color(0xff2DAC00).withOpacity(0.4),thickness:6,),
                                afterLineStyle :  LineStyle(color : Color(0xff2DAC00).withOpacity(0.4),thickness:6,),
                                ///Indicator distance from left side of border
                                alignment: TimelineAlign.manual,
                                lineXY: 0.3,
                                /// Data show after Indicator
                                endChild: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0,right: 0.0, top: 0.0,bottom: 0.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        /// track Order Screen Time Line Text
                                        Text(
                                          trackOrderScreenTimeLineText5,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontFamily: textFontFamily,
                                            fontSize: 10,
                                            color: const Color(0xff000000),
                                            // height: 1,
                                          ),
                                          textHeightBehavior:
                                          TextHeightBehavior(applyHeightToFirstAscent: false),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                  constraints: const BoxConstraints(
                                    minHeight: 50,
                                  ),
                                  // color: Colors.black,
                                ),
                                /// Data show Before Indicator
                                startChild: Container(
                                  // color: Colors.amberAccent,
                                ),
                              ),

                            ],
                          ),
                        ),
                        ///  states between of start and end time line of Track Order
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          /// Stack
                          child: Stack(
                            alignment : AlignmentDirectional.bottomCenter,
                            children: <Widget>[
                              ///Custom Divider
                              DividerCustom(),
                              /// Draw TimeLine
                              TimelineTile(
                                hasIndicator:true,
                                indicatorStyle :  prefix.IndicatorStyle(
                                  width: 28,
                                  height: 28.0,
                                  // color: Colors.black,
                                  indicator:Container(
                                    /// Image in Indicator or Circular
                                    child: Image.asset(
                                      servicingTrackOrderScreenImagePath,
                                      width: 28.0,
                                      height: 28.0,
                                      fit: BoxFit.cover,
                                    ),

                                  ),
                                  ///Background Color of Indicator
                                  color : Color(0xff2DAC00),
                                ),
                                /// Indicator vertical Line Color and width
                                beforeLineStyle :  LineStyle(color : Color(0xff2DAC00).withOpacity(0.4),thickness:6,),
                                afterLineStyle :  LineStyle(color : Color(0xff2DAC00).withOpacity(0.4),thickness:6,),
                                ///Indicator distance from left side of border
                                alignment: TimelineAlign.manual,
                                lineXY: 0.3,
                                /// Data show after Indicator
                                endChild: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0,right: 0.0, top: 0.0,bottom: 0.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        /// track Order Screen Time Line Text
                                        Text(
                                          trackOrderScreenTimeLineText6,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontFamily: textFontFamily,
                                            fontSize: 10,
                                            color: const Color(0xff000000),
                                            // height: 1,
                                          ),
                                          textHeightBehavior:
                                          TextHeightBehavior(applyHeightToFirstAscent: false),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                  constraints: const BoxConstraints(
                                    minHeight: 50,
                                  ),
                                  // color: Colors.black,
                                ),
                                /// Data show Before Indicator
                                startChild: Container(
                                  // color: Colors.amberAccent,
                                ),
                              ),

                            ],
                          ),
                        ),
                        ///  states between of start and end time line of Track Order
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          /// Stack
                          child: Stack(
                            alignment : AlignmentDirectional.bottomCenter,
                            children: <Widget>[
                              ///Custom Divider
                              DividerCustom(),
                              /// Draw TimeLine
                              TimelineTile(
                                hasIndicator:true,
                                indicatorStyle :  prefix.IndicatorStyle(
                                  width: 28,
                                  height: 28.0,
                                  // color: Colors.black,
                                  indicator:Container(
                                    /// Image in Indicator or Circular
                                    child: Image.asset(
                                      vehicleDroppedTrackOrderScreenImagePath,
                                      width: 28.0,
                                      height: 28.0,
                                      fit: BoxFit.cover,
                                    ),

                                  ),
                                  ///Background Color of Indicator
                                  color : Color(0xff2DAC00),
                                ),
                                /// Indicator vertical Line Color and width
                                beforeLineStyle :  LineStyle(color : Color(0xff2DAC00).withOpacity(0.4),thickness:6,),
                                afterLineStyle :  LineStyle(color : Color(0xff2DAC00).withOpacity(0.4),thickness:6,),
                                ///Indicator distance from left side of border
                                alignment: TimelineAlign.manual,
                                lineXY: 0.3,
                                /// Data show after Indicator
                                endChild: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0,right: 0.0, top: 0.0,bottom: 0.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        /// track Order Screen Time Line Text
                                        Text(
                                          trackOrderScreenTimeLineText7,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontFamily: textFontFamily,
                                            fontSize: 10,
                                            color: const Color(0xff000000),
                                            // height: 1,
                                          ),
                                          textHeightBehavior:
                                          TextHeightBehavior(applyHeightToFirstAscent: false),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                  constraints: const BoxConstraints(
                                    minHeight: 50,
                                  ),
                                  // color: Colors.black,
                                ),
                                /// Data show Before Indicator
                                startChild: Container(
                                  // color: Colors.amberAccent,
                                ),
                              ),

                            ],
                          ),
                        ),
                        /// End of time line of Track Order
                        Container(

                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          /// Stack
                          child: Stack(
                            alignment : AlignmentDirectional.bottomCenter,
                            children: <Widget>[

                              /// Draw TimeLine
                              TimelineTile(
                                isLast: true,
                                hasIndicator:true,
                                indicatorStyle :  prefix.IndicatorStyle(
                                  width: 28,
                                  height: 28.0,
                                  // color: Colors.black,
                                  indicator:Container(
                                    /// Image in Indicator or Circular
                                    child: Image.asset(
                                      tickTrackOrderScreenImagePath,
                                      width: 28.0,
                                      height: 28.0,
                                      fit: BoxFit.cover,
                                    ),

                                  ),
                                  ///Background Color of Indicator
                                  color : Color(0xff2DAC00),
                                ),
                                /// Indicator vertical Line Color and width
                                beforeLineStyle :  LineStyle(color : Color(0xff2DAC00).withOpacity(0.4),thickness:6,),
                                afterLineStyle :  LineStyle(color : Color(0xff2DAC00).withOpacity(0.4),thickness:6,),
                                ///Indicator distance from left side of border
                                alignment: TimelineAlign.manual,
                                lineXY: 0.3,
                                /// Data show after Indicator
                                endChild: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0,right: 0.0, top: 0.0,bottom: 0.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        /// track Order Screen Time Line Text
                                        Text(
                                          trackOrderScreenTimeLineText8,
                                          style: TextStyle(
                                            fontFamily: textFontFamily,
                                            fontSize: 10,
                                            color: const Color(0xff000000),
                                            // height: 1,
                                          ),
                                          textHeightBehavior:
                                          TextHeightBehavior(applyHeightToFirstAscent: false),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                  constraints: const BoxConstraints(
                                    minHeight: 50,
                                  ),
                                  // color: Colors.black,
                                ),
                                /// Data show Before Indicator
                                startChild: Container(
                                  // color: Colors.amberAccent,
                                ),
                              ),

                            ],
                          ),
                        ),

                      ],
                    ),
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



//
// ///Order Details, Booking, Pickup and Delivery Date and Time
// class SingleOrderDetailsProcess extends StatefulWidget {
//   // const SingleOrderDetailsProcess({Key? key}) : super(key: key);
//   final String titleDetails;
//   final String timeAndDate;
//
//   const SingleOrderDetailsProcess(
//       {Key? key, required this.titleDetails, required this.timeAndDate})
//       : super(key: key);
//
//   @override
//   _SingleOrderDetailsProcessState createState() =>
//       _SingleOrderDetailsProcessState();
// }
//
// class _SingleOrderDetailsProcessState extends State<SingleOrderDetailsProcess> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 ///Booking date & time
//                 widget.titleDetails,
//                 style: TextStyle(
//                   fontFamily: textFontFamily,
//                   fontSize: 14,
//                   color: const Color(0xff686868),
//                   height: 1,
//                 ),
//                 textHeightBehavior:
//                 TextHeightBehavior(applyHeightToFirstAscent: false),
//                 textAlign: TextAlign.left,
//               ),
//             ),
//           ],
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.fromLTRB(8, 2, 8, 16),
//               child: Text(
//                 ///time and Date Description
//                 widget.timeAndDate,
//                 style: TextStyle(
//                   fontFamily: textFontFamily,
//                   fontSize: 14,
//                   color: const Color(0xff000000),
//                   height: 1,
//                 ),
//                 textHeightBehavior:
//                 TextHeightBehavior(applyHeightToFirstAscent: false),
//                 textAlign: TextAlign.left,
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
//
//
