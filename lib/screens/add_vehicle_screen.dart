import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/screens/mybooking_screen.dart';
import 'package:two_wheel_vehicle/screens/navigator_helper.dart';

import '../config.dart';
import '../widgets.dart';
import 'Choose_bike_brand.dart';
import 'Sell Your Bike Screen.dart';

class AddVehicleScreen extends StatefulWidget {
  @override
  _AddVehicleScreenState createState() => _AddVehicleScreenState();
}

class _AddVehicleScreenState extends State<AddVehicleScreen> {

  int select = 0;

  String blackpatroll = blackpetrol;
  String blackbattaryyy = blackbettry;
  String redpatroll = redpetrol;
  String redbattaryy = redbattery;

  String selected = 'Choose Model';

  @override
  void initState() {
    blackpatroll = blackpetrol;
    blackbattaryyy = blackbettry;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: NeumorphicColors.background,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: NeumorphicColors.background,
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
            'Add Vehicle',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 18,
              color: const Color(0xff000000),
            ),
            textAlign: TextAlign.left,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child: Neumorphic(
                      margin: EdgeInsets.all(20),
                      style: NeumorphicStyle(shadowLightColor:Colors.white,shadowLightColorEmboss: Colors.black,
                          shadowDarkColorEmboss: Colors.black38,shadowDarkColor: Colors.black),
                      child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Text('Choose Brand',style: TextStyle(fontSize: 17),),
                            ),
                            trailing: Icon(CupertinoIcons.forward),
                            onTap: (){
                              Navigator.push(context, CupertinoPageRoute(builder: (context)=>Choose()));
                            },
                          )
                        ),
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child: Neumorphic(
                      margin: EdgeInsets.all(20),
                      style: NeumorphicStyle(shadowLightColor:Colors.white,shadowLightColorEmboss: Colors.black,shadowDarkColorEmboss: Colors.black38,shadowDarkColor: Colors.black),
                      child:  Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: DropdownButton<String>(
                            underline: SizedBox(),
                            dropdownColor: NeumorphicColors.background,
                            icon: Icon(CupertinoIcons.arrowtriangle_down_fill),
                            isExpanded: true,
                            hint: Text(selected),
                            items: <String>[ '   Honda', '  Suzuki', '  Yamaha', '  Kawasaki', ].map((String value) {
                              return DropdownMenuItem<String>(
                                onTap: (){
                                  setState(() {
                                    selected = value;
                                  });
                                },
                                value: value,
                                child: new Text(value),
                              );
                            }).toList(),
                            onChanged: (_) {},
                          ),
                        ),
                      ),
                    ),
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child:  myTextField(text: 'Year', validator: (value) {

                    }, read: false, )),

                  
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 45),
                        child: Text('Fuel Type',style: TextStyle(
                          fontSize: 18,fontWeight: FontWeight.bold
                        ),),
                      )
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Neumorphic(
                            style: NeumorphicStyle(shadowLightColor:Colors.white,shadowLightColorEmboss: Colors.black,shadowDarkColorEmboss: Colors.black38,shadowDarkColor: Colors.black),
                            child:  Container(
                                width: 150,
                                height: 100,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                        onTap:(){
                                          setState(() {
                                            select = 1;
                                            redbattaryy = blackbettry;
                                            redpatroll = redpetrol;

                                          });
                                        },

                                        child: Image.asset(redpatroll)),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('Petrol',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Neumorphic(
                            style: NeumorphicStyle(
                              shadowLightColor: Colors.white,shadowLightColorEmboss: Colors.black,
                                shadowDarkColorEmboss: Colors.black38,shadowDarkColor: Colors.black
                            ),
                            child:

                              Container(
                                width: 150,
                                height: 100,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                     GestureDetector(
                                         onTap: (){
                                           setState(() {
                                             select = 2;
                                             redpatroll = blackpetrol;
                                             redbattaryy = redbattery;

                                           });

                                         },
                                         child: Image.asset(redbattaryy )),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('Electric',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: SizedBox(
                      height: 50,
                      child:  ElevatedButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },style: ElevatedButton.styleFrom(shadowColor: Color(0xfff93527),primary: small),child: Text(' Proceed ',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 19),),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        )
    );
  }
}
