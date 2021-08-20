import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Time extends StatefulWidget {
  const Time({Key? key}) : super(key: key);

  @override
  _TimeState createState() => _TimeState();
}

class _TimeState extends State<Time> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicColors.background,
      appBar: AppBar(
        elevation: 0,
        title: Text('',style: TextStyle(color: Colors.black),),
        backgroundColor: NeumorphicColors.background,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,),
        ),
        centerTitle: true,
      ),
      body: Calender(
      ),

    );
  }
}

class Calender extends StatefulWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {

  var _switch = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Neumorphic(
                style: NeumorphicStyle(
                    shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white
                ),
                child: Container(
                  width: 290,
                  height: 300,
                  
                  child: Column(
                    children: [
                      
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Sun',style: TextStyle(fontWeight: FontWeight.w700),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Mon',style: TextStyle(fontWeight: FontWeight.w700)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Tue',style: TextStyle(fontWeight: FontWeight.w700)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Wed',style: TextStyle(fontWeight: FontWeight.w700)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Thu',style: TextStyle(fontWeight: FontWeight.w700)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Fri',style: TextStyle(fontWeight: FontWeight.w700)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Sat',style: TextStyle(fontWeight: FontWeight.w700)),
                            ),

                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Neumorphic(
                          style: NeumorphicStyle(
                              shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white,
                            depth: NeumorphicTheme.embossDepth(context),
                            ),
                          child: Container(
                            width: 260,
                            height: 3,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                          ],
                        ),
                      )
                      
                    ],
                  ),
                  
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 38.0,top: 18),
                  child: Text('Select Time'),
                )
              ],
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40.0,top: 10),
                  child: Neumorphic(
                    style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(CupertinoIcons.sun_min,size: 33,),
                          ),
                          Text('AM',style: TextStyle(fontSize: 20),)
                        ],
                      ),
                      width: 80,
                      height: 45,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,top: 10),
                  child: Neumorphic(
                    style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                    child:  Container(
                        color: Colors.redAccent,
                        width: 80,
                        height: 45,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(CupertinoIcons.moon,size: 33,color: Colors.white,),
                            ),
                            Text('PM',style: TextStyle(fontSize: 20,color: Colors.white),)
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40.0,top: 20),
                  child: Neumorphic(
                    style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                    child: Container(
                      child: Row(
                        children: [

                          Center(child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text('12 - 01',style: TextStyle(fontSize: 20),),
                          ))
                        ],
                      ),
                      width: 70,
                      height: 40,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,top: 20),
                  child: Neumorphic(
                    style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                    child: Container(
                      child: Row(
                        children: [

                          Center(child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text('01 - 02',style: TextStyle(fontSize: 20),),
                          ))
                        ],
                      ),
                      width: 70,
                      height: 40,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,top: 20),
                  child: Neumorphic(
                    style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                    child: Container(
                      child: Row(
                        children: [

                          Center(child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text('02 - 03',style: TextStyle(fontSize: 20),),
                          ))
                        ],
                      ),
                      width: 70,
                      height: 40,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,top: 20),
                  child: Neumorphic(
                    style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                    child: Container(
                      child: Row(
                        children: [

                          Center(child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text('03 - 04',style: TextStyle(fontSize: 20),),
                          ))
                        ],
                      ),
                      width: 70,
                      height: 40,
                    ),
                  ),
                ),


              ],
            ),


            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40.0,top: 20),
                  child: Neumorphic(
                    style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                    child: Container(
                      color: Colors.redAccent,
                      child: Row(
                        children: [

                          Center(child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text('12 - 01',style: TextStyle(fontSize: 20,color: Colors.white),),
                          ))
                        ],
                      ),
                      width: 70,
                      height: 40,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,top: 20),
                  child: Neumorphic(
                    style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                    child: Container(
                      child: Row(
                        children: [

                          Center(child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text('01 - 02',style: TextStyle(fontSize: 20),),
                          ))
                        ],
                      ),
                      width: 70,
                      height: 40,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,top: 20),
                  child: Neumorphic(
                    style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                    child: Container(
                      child: Row(
                        children: [

                          Center(child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text('02 - 03',style: TextStyle(fontSize: 20),),
                          ))
                        ],
                      ),
                      width: 70,
                      height: 40,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,top: 20),
                  child: Neumorphic(
                    style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                    child: Container(
                      child: Row(
                        children: [

                          Center(child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text('03 - 04',style: TextStyle(fontSize: 20),),
                          ))
                        ],
                      ),
                      width: 70,
                      height: 40,
                    ),
                  ),
                ),


              ],
            ),

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 28.0,left: 10),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white

                    ),
                    child: Container(
                      width: 280,
                      height: 50,
                      child: ListTile(
                        title: Text('Require Pickup',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                        trailing: CupertinoSwitch(value: (_switch), onChanged: (bool value) {
                          setState(() {
                            _switch = value;

                          });
                        },)

                      ),

                    ),
                  ),
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Card(
                margin: EdgeInsets.only(bottom: 20) ,
                child: SizedBox(
                  width: 140,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: (){
                    },style: ElevatedButton.styleFrom(shadowColor: Color(0xfff93527),primary: Colors.red),child: Text('Track Order',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 19),),
                  ),
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}

