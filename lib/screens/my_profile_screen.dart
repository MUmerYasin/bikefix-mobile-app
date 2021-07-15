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
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: backgroundColor,
          // leading: Image.asset('assets/icons/back_icon.png',fit: BoxFit.fill,),
          leading: Icon(Icons.arrow_back_ios),
          title: Text(
          'My Profile',
          style: TextStyle(
            fontFamily: 'Roboto',
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Name',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 18,
                              color: const Color(0xff000000),
                              height: 1,
                            ),
                            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      CustomTextField(text: 'Name',),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Email',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 18,
                              color: const Color(0xff000000),
                              height: 1,
                            ),
                            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      CustomTextField(text: 'mail@mail.com',),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'DOB',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 18,
                                      color: const Color(0xff000000),
                                      height: 1,
                                    ),
                                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width * .40,
                                    child: CustomTextField(text: '01/01/1990',))
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Gender',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 18,
                                      color: const Color(0xff000000),
                                      height: 1,
                                    ),
                                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *.40,
                                    child: CustomTextField(text: 'Male',))
                              ],
                            ),



                          ],
                        ),
                      ),
                      RoundedCornerButton(
                        onPressed: () {
                          gotoScreen(context: context,screen:LocationScreen());

                        },
                        child: 'Save',
                      ),

                    ],))

                  ])),
        ));
  }
}
