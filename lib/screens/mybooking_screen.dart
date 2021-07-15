import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
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
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: backgroundColor,
          // leading: Image.asset('assets/icons/back_icon.png',fit: BoxFit.fill,),
          leading: Icon(Icons.arrow_back_ios),
          title: Text(
            'My Bookings',
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
            child: SingleChildScrollView(
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Neumorphic(
                      style: NeumorphicStyle(
                          shadowLightColorEmboss: Colors.white,
                          shadowDarkColorEmboss: Colors.black,
                          surfaceIntensity: 8,
                          shadowDarkColor: Colors.black),
                      child: Container(
                        height: 200,
                        padding: EdgeInsets.all(15),
                        alignment: Alignment.center,
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
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                                Text(
                                  '03:45 pm',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    color: const Color(0xff000000),
                                    height: 1,
                                  ),
                                  textHeightBehavior: TextHeightBehavior(
                                      applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.left,
                                )
                              ],
                            ),
                            Container(
                              height: 5,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/icons/ktm_icon.png'),
                                Column(
                                  children: [
                                    Text(
                                      'KTM 200 Duke',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14,
                                        color: const Color(0xff000000),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'NA',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
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
                                        Text(
                                          'Payment Confirmed',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 10,
                                            color: const Color(0xff686868),
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        Icon(
                                          Icons.check_circle,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Half Engine Overhaul',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 10,
                                        color: const Color(0xffd33937),
                                      ),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: 5,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                              ),
                            ),
                            Text(
                              'Service Complete',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 12,
                                color: const Color(0xff2dac00),
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              height: 5,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                              ),
                            ),
                            RoundedCornerButton(
                              onPressed: () {
                                gotoScreen(
                                    context: context,
                                    screen: ServiceStatusScreen());
                              },
                              child: 'Need Help ?',
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(
                          shadowLightColorEmboss: Colors.white,
                          shadowDarkColorEmboss: Colors.black,
                          surfaceIntensity: 8,
                          shadowDarkColor: Colors.black),
                      child: Container(
                        height: 200,
                        padding: EdgeInsets.all(15),
                        alignment: Alignment.center,
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
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                                Text(
                                  '03:45 pm',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    color: const Color(0xff000000),
                                    height: 1,
                                  ),
                                  textHeightBehavior: TextHeightBehavior(
                                      applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.left,
                                )
                              ],
                            ),
                            Container(
                              height: 5,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/icons/ktm_icon.png'),
                                Column(
                                  children: [
                                    Text(
                                      'KTM 200 Duke',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14,
                                        color: const Color(0xff000000),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'NA',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
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
                                        Text(
                                          'Payment Confirmed',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 10,
                                            color: const Color(0xff686868),
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        Icon(
                                          Icons.check_circle,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Half Engine Overhaul',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 10,
                                        color: const Color(0xffd33937),
                                      ),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: 5,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                              ),
                            ),
                            Text(
                              'Service Complete',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 12,
                                color: const Color(0xff2dac00),
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              height: 5,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                              ),
                            ),
                            RoundedCornerButton(
                              onPressed: () {
                                gotoScreen(
                                    context: context,
                                    screen: ServiceStatusScreen());
                              },
                              child: 'Need Help ?',
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(
                          shadowLightColorEmboss: Colors.white,
                          shadowDarkColorEmboss: Colors.black,
                          surfaceIntensity: 8,
                          shadowDarkColor: Colors.black),
                      child: Container(
                        height: 200,
                        padding: EdgeInsets.all(15),
                        alignment: Alignment.center,
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
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                                Text(
                                  '03:45 pm',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    color: const Color(0xff000000),
                                    height: 1,
                                  ),
                                  textHeightBehavior: TextHeightBehavior(
                                      applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.left,
                                )
                              ],
                            ),
                            Container(
                              height: 5,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/icons/ktm_icon.png'),
                                Column(
                                  children: [
                                    Text(
                                      'KTM 200 Duke',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14,
                                        color: const Color(0xff000000),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'NA',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
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
                                        Text(
                                          'Payment Confirmed',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 10,
                                            color: const Color(0xff686868),
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        Icon(
                                          Icons.check_circle,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Half Engine Overhaul',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 10,
                                        color: const Color(0xffd33937),
                                      ),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: 5,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                              ),
                            ),
                            Text(
                              'Service Complete',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 12,
                                color: const Color(0xff2dac00),
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              height: 5,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                              ),
                            ),
                            RoundedCornerButton(
                              onPressed: () {
                                gotoScreen(
                                    context: context,
                                    screen: ServiceStatusScreen());
                              },
                              child: 'Need Help ?',
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(
                          shadowLightColorEmboss: Colors.white,
                          shadowDarkColorEmboss: Colors.black,
                          surfaceIntensity: 8,
                          shadowDarkColor: Colors.black),
                      child: Container(
                        height: 200,
                        padding: EdgeInsets.all(15),
                        alignment: Alignment.center,
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
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                                Text(
                                  '03:45 pm',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    color: const Color(0xff000000),
                                    height: 1,
                                  ),
                                  textHeightBehavior: TextHeightBehavior(
                                      applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.left,
                                )
                              ],
                            ),
                            Container(
                              height: 5,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/icons/ktm_icon.png'),
                                Column(
                                  children: [
                                    Text(
                                      'KTM 200 Duke',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14,
                                        color: const Color(0xff000000),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'NA',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
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
                                        Text(
                                          'Payment Confirmed',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 10,
                                            color: const Color(0xff686868),
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        Icon(
                                          Icons.check_circle,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Half Engine Overhaul',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 10,
                                        color: const Color(0xffd33937),
                                      ),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: 5,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                              ),
                            ),
                            Text(
                              'Service Complete',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 12,
                                color: const Color(0xff2dac00),
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              height: 5,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                              ),
                            ),
                            RoundedCornerButton(
                              onPressed: () {
                                gotoScreen(
                                    context: context,
                                    screen: ServiceStatusScreen());
                              },
                              child: 'Need Help ?',
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(
                          shadowLightColorEmboss: Colors.white,
                          shadowDarkColorEmboss: Colors.black,
                          surfaceIntensity: 8,
                          shadowDarkColor: Colors.black),
                      child: Container(
                        height: 200,
                        padding: EdgeInsets.all(15),
                        alignment: Alignment.center,
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
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                                Text(
                                  '03:45 pm',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    color: const Color(0xff000000),
                                    height: 1,
                                  ),
                                  textHeightBehavior: TextHeightBehavior(
                                      applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.left,
                                )
                              ],
                            ),
                            Container(
                              height: 5,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/icons/ktm_icon.png'),
                                Column(
                                  children: [
                                    Text(
                                      'KTM 200 Duke',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14,
                                        color: const Color(0xff000000),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'NA',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
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
                                        Text(
                                          'Payment Confirmed',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 10,
                                            color: const Color(0xff686868),
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        Icon(
                                          Icons.check_circle,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Half Engine Overhaul',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 10,
                                        color: const Color(0xffd33937),
                                      ),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: 5,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                              ),
                            ),
                            Text(
                              'Service Complete',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 12,
                                color: const Color(0xff2dac00),
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              height: 5,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                              ),
                            ),
                            RoundedCornerButton(
                              onPressed: () {
                                gotoScreen(
                                    context: context,
                                    screen: ServiceStatusScreen());
                              },
                              child: 'Need Help ?',
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(
                          shadowLightColorEmboss: Colors.white,
                          shadowDarkColorEmboss: Colors.black,
                          surfaceIntensity: 8,
                          shadowDarkColor: Colors.black),
                      child: Container(
                        height: 200,
                        padding: EdgeInsets.all(15),
                        alignment: Alignment.center,
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
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                                Text(
                                  '03:45 pm',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    color: const Color(0xff000000),
                                    height: 1,
                                  ),
                                  textHeightBehavior: TextHeightBehavior(
                                      applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.left,
                                )
                              ],
                            ),
                            Container(
                              height: 5,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/icons/ktm_icon.png'),
                                Column(
                                  children: [
                                    Text(
                                      'KTM 200 Duke',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14,
                                        color: const Color(0xff000000),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'NA',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
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
                                        Text(
                                          'Payment Confirmed',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 10,
                                            color: const Color(0xff686868),
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        Icon(
                                          Icons.check_circle,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Half Engine Overhaul',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 10,
                                        color: const Color(0xffd33937),
                                      ),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: 5,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                              ),
                            ),
                            Text(
                              'Service Complete',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 12,
                                color: const Color(0xff2dac00),
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              height: 5,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                              ),
                            ),
                            RoundedCornerButton(
                              onPressed: () {
                                gotoScreen(
                                    context: context,
                                    screen: ServiceStatusScreen());
                              },
                              child: 'Need Help ?',
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(
                          shadowLightColorEmboss: Colors.white,
                          shadowDarkColorEmboss: Colors.black,
                          surfaceIntensity: 8,
                          shadowDarkColor: Colors.black),
                      child: Container(
                        height: 200,
                        padding: EdgeInsets.all(15),
                        alignment: Alignment.center,
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
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                                Text(
                                  '03:45 pm',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    color: const Color(0xff000000),
                                    height: 1,
                                  ),
                                  textHeightBehavior: TextHeightBehavior(
                                      applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.left,
                                )
                              ],
                            ),
                            Container(
                              height: 5,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/icons/ktm_icon.png'),
                                Column(
                                  children: [
                                    Text(
                                      'KTM 200 Duke',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14,
                                        color: const Color(0xff000000),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'NA',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
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
                                        Text(
                                          'Payment Confirmed',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 10,
                                            color: const Color(0xff686868),
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        Icon(
                                          Icons.check_circle,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Half Engine Overhaul',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 10,
                                        color: const Color(0xffd33937),
                                      ),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: 5,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                              ),
                            ),
                            Text(
                              'Service Complete',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 12,
                                color: const Color(0xff2dac00),
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              height: 5,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                              ),
                            ),
                            RoundedCornerButton(
                              onPressed: () {
                                gotoScreen(
                                    context: context,
                                    screen: ServiceStatusScreen());
                              },
                              child: 'Need Help ?',
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ]),
            )));
  }
}
