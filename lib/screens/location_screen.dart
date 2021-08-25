import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/screens/my_vehicle_screen.dart';
import 'package:two_wheel_vehicle/screens/navigator_helper.dart';
import '../config.dart';
import '../widgets.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  int selected = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: NeumorphicColors.background,
        appBar: AppBar(
          backgroundColor: NeumorphicColors.background,
          // leading: Image.asset('assets/icons/back_icon.png',fit: BoxFit.fill,),
          leading: Icon(Icons.arrow_back_ios),
          title: Text(
            'Location',
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
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: CustomAppBar(title: 'Location',),
                  // ),
                  Neumorphic(
                    style: NeumorphicStyle(
                        depth: -10,
                        shape: NeumorphicShape.flat,
                        shadowDarkColor: Colors.black12,
                        shadowLightColor: Colors.white,
                        shadowDarkColorEmboss: Colors.black.withOpacity(0.8)

                        //  boxShape: NeumorphicBoxShape.circle(),
                        ),
                    child: Container(
                        // color: Colors.blue,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          'image/map.png',
                          fit: BoxFit.fill,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.my_location, color: Color(0xff2DAC00)),
                        Text(
                          ' Use Current Location',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            color: const Color(0xff2dac00),
                          ),
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: myTextField(text: 'Street'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: myTextField(text: 'City'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: myTextField(text: 'Zip Code'),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallRoundedCornerButton(
                            onPressed: () {
                              setState(() {
                                selected = 1;
                              });
                            },
                            child: 'Home',
                            color: selected == 1 ? true : false),
                        SmallRoundedCornerButton(
                            onPressed: () {
                              setState(() {
                                selected = 2;
                              });
                            },
                            child: 'Office',
                            color: selected == 2 ? true : false),
                        SmallRoundedCornerButton(
                            onPressed: () {
                              setState(() {
                                selected = 3;
                              });
                            },
                            child: 'Other',
                            color: selected == 3 ? true : false),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RoundedCornerButton(
                      onPressed: () {
                        gotoScreen(context: context, screen: MyVehicles());
                      },
                      child: 'Save Addr.',
                    ),
                  ),
                ])));
  }
}
