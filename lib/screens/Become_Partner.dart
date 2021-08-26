import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/config.dart';

import 'Sell Your Bike Screen.dart';
import 'Time_Screen.dart';

class Become_Partner extends StatefulWidget {
  const Become_Partner({Key? key}) : super(key: key);

  @override
  _Become_PartnerState createState() => _Become_PartnerState();
}

class _Become_PartnerState extends State<Become_Partner> {
  String selectOption = '    Select';
  String drop1 = '    Select Budget';
  String drop2 = '    Select Location';
  String drop3 = '    Select ';
  String drop4 = '    Select ';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicColors.background,
      appBar: AppBar(
        elevation: 0,
        title: Text('Become a Partner',style: TextStyle(color: Colors.black),),
        backgroundColor: NeumorphicColors.background,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('TIME FRAME FOR BUYING A FRANCHISE',style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0.0),
                  child: MyDropDown(
                    child: DropdownButton<String>(
                      underline: SizedBox(),
                      isExpanded: true,
                      hint: Text(selectOption),
                      items: <String>['     Male', '      Female'].map((String value) {
                        return DropdownMenuItem<String>(
                          onTap: (){
                            setState(() {
                              selectOption = value;
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
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('BUDGET FOR STARTING A FRANCHISE',style: TextStyle(fontWeight: FontWeight.bold),),
                ),

          MyDropDown(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      underline: SizedBox(),
                      hint: Text(drop1),
                      items: <String>['  Male', '   Female'].map((String value) {
                        return DropdownMenuItem<String>(
                          onTap: (){
                            setState(() {
                              drop1 = value;
                            });
                          },
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                  ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('LOCATION TO LAUNCH A BIKEFIXUP',style: TextStyle(fontWeight: FontWeight.bold),),
                ),

                MyDropDown(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      hint: Text(drop2),
                      underline: SizedBox(),
                      items: <String>['  Male', '  Female'].map((String value) {
                        return DropdownMenuItem<String>(
                          onTap: (){
                            setState(() {
                              drop2 = value;
                            });
                          },
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('ARE OR HAVE YOU BEEN A MOTORBIKE MECHANICS?',style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                 MyDropDown(
                    child: DropdownButton<String>(
                      focusColor: NeumorphicColors.background,
                      isExpanded: true,
                      hint: Text(drop3),
                      underline: SizedBox(),
                      items: <String>['  Male', '  Female'].map((String value) {
                        return DropdownMenuItem<String>(
                          onTap: (){
                            setState(() {
                              drop3 = value;
                            });
                          },
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('HOW DID YOU HERE ABOUT US?',style: TextStyle(fontWeight: FontWeight.bold),),
                ),


               MyDropDown(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      hint: Text(drop4),
                      underline: SizedBox(),
                      items: <String>['   Male', '   Female'].map((String value) {
                        return DropdownMenuItem<String>(
                          onTap: (){
                            setState(() {
                              drop4 = value;
                            });
                          },
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                  ),

                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0,top: 35),
                        child: InkWell(
                          highlightColor: Colors.blue.withOpacity(0.4),
                          splashColor: Colors.green.withOpacity(0.5),
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(color: Colors.redAccent, spreadRadius:3, blurRadius: 7)
                              ],
                              borderRadius: BorderRadius.circular(14)
                            ),

                              child: SizedBox(
                                height: 50,
                                child:  ElevatedButton(
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Sell_Your_Bike()));
                                  },style: ElevatedButton.styleFrom(shadowColor: Color(0xfff93527),primary: small),child: Text(' Submit ',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 19),),
                                ),
                              ),
                            ),
                        ),
                        ),
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      )
      
    );
  }
}

class MyDropDown extends StatefulWidget {
  const MyDropDown({Key? key, this.child}) : super(key: key);

  final child;
  @override
  _MyDropDownState createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Container(
                  height: 49,
                  child: Neumorphic(
                    style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),shadowLightColor: Colors.white,shadowDarkColorEmboss: Colors.black54, shadowLightColorEmboss: Colors.white,shadowDarkColor: Colors.black54,color: NeumorphicColors.background ),
                    child: widget.child,
                  ),
                ),
             ),
            
          ],
        ),
      ),
    );
  }
}
