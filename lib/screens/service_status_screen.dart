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
          backgroundColor: backgroundColor,
          // leading: Image.asset('assets/icons/back_icon.png',fit: BoxFit.fill,),
          leading: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Row(
              children: [
                appsign()
              ],
            ),
          ),
          title: Text(
            'Status Service',
            style: TextStyle(
              fontFamily: 'Roboto',
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
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(

                    padding: const EdgeInsets.only(top: 8.0,bottom: 10),
                    child: Neumorphic(
                      style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black),
                      child: Container(
                        padding: EdgeInsets.all(15),
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text.rich(
                              TextSpan(
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 18,
                                  color: const Color(0xff000000),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'KTM\n',
                                  ),
                                  TextSpan(
                                    text: '200 Duke',
                                    style: TextStyle(
                                      color: const Color(0xffd33937),
                                    ),
                                  ),
                                ],
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                            ),
                            Image.asset('assets/icons/bike_image.png'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,bottom: 10),
                     child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Order Details',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: const Color(0xff686868),
                          height: 1,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,bottom: 10),
                    child: Neumorphic(
                      style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black),

                       child: Container(
                          width: MediaQuery.of(context).size.width,
                          // height: 160,
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 10, bottom: 10),
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
                              Text(
                                'Booking date & time',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  color: const Color(0xff686868),
                                  height: 1,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                '30/03/2021',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  color: const Color(0xff000000),
                                  height: 1,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.left,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0,bottom: 10),
                                child: Container(
                                  height: 5,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Text(
                                'Booking date & time',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  color: const Color(0xff686868),
                                  height: 1,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                '30/03/2021',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  color: const Color(0xff000000),
                                  height: 1,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.left,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0,bottom: 10),

                                child: Container(
                                  height: 5,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Text(
                                'Booking date & time',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  color: const Color(0xff686868),
                                  height: 1,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                '30/03/2021',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  color: const Color(0xff000000),
                                  height: 1,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.left,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0,bottom: 10),
                                child: Container(
                                  height: 5,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Text(
                                'Price: ₹ 2,500',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 18,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.left,
                              )
                            ],
                          )),
                     ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,bottom: 10),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: RoundedCornerButton(
                        onPressed: () {
                          gotoScreen(context: context,screen: LoginScreen());
                        },
                        child: 'Feedback',
                      ),
                    ),
                  ),
                ])));
  }
}
