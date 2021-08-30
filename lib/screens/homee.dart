import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:two_wheel_vehicle/config.dart';
import 'package:two_wheel_vehicle/screens/paymet_method_screen.dart';
import 'package:two_wheel_vehicle/screens/service_screen.dart';
import 'package:two_wheel_vehicle/screens/subscription.dart';
import 'package:two_wheel_vehicle/widgets.dart';
import 'Become_Partner.dart';
import 'Body_Work_Screen.dart';
import 'Engine_Work_Screen.dart';
import 'General_Service_Screen.dart';
import 'Help&Support_screen.dart';
import 'Repair_Work_Screen.dart';
import 'add_vehicle_screen.dart';
import 'location_screen.dart';
import 'login_screen.dart';
import 'my_profile_screen.dart';
import 'mybooking_screen.dart';

class Homee extends StatefulWidget {
  const Homee({Key? key}) : super(key: key);

  @override
  _HomeeState createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {

  final List<String> images = [
    'assets/icons/bikee.jpg',
    'assets/icons/cycle.jpg',
    'assets/icons/parts.png',
  ];

  var contain = true;

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  Color _containerColor = Colors.blue;
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _return,
      child: Scaffold(
        key: _key,
        backgroundColor: NeumorphicColors.background,
        appBar: AppBar(
          actions: [
            Text(''),
          ],
          elevation: 0,
          title: Text('',style: TextStyle(color: Colors.black),),
          backgroundColor: Color(0xffe2e5ed),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Neumorphic(
                    style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),shadowLightColor:
                    Colors.black45,shadowDarkColorEmboss: Colors.black54, shadowLightColorEmboss: Colors.white,shadowDarkColor:
                    Colors.black54,color: NeumorphicColors.background),
                    child: Container(
                      width: 330,
                      height: 150,
                      child: CarouselSlider(
                              options: CarouselOptions(
                              enlargeCenterPage: false,
                              disableCenter: true,
                              enableInfiniteScroll: true,
                              autoPlay: true,
                              ),
                              items: images.map((e) => ClipRRect(
                              borderRadius: BorderRadius.circular(2),
                              child: Stack(
                              fit: StackFit.expand,
                              children: [
                              Image.asset(e,
                              width: 900,
                              height: 350,
                              fit: BoxFit.cover,)
                              ],
                              ),
                              )).toList(),

                              ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: Neumorphic(
                      style: NeumorphicStyle(lightSource: LightSource.topLeft,depth:4,oppositeShadowLightSource: true,
                          shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.white ,
                          shadowDarkColor: Colors.white ,shadowLightColor: Colors.black45,border: NeumorphicBorder(color: Colors.white)),
                      child: Container(

                        decoration: BoxDecoration(
                            color: Color(0xff548ed0),
                            borderRadius: BorderRadius.circular(0)
                        ),
                        width: MediaQuery.of(context).size.width/1.1,
                        height: MediaQuery.of(context).size.height/10,
                        child: Column(
                          children: [

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 30.0,top: 14),
                                  child: Image.asset('assets/icons/setting.png',scale: 8,color: Colors.white,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0,top: 8),
                                  child: Icon(Icons.check_circle_outline,size: 29,color: Colors.white,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Image.asset('assets/icons/afford.png',scale: 8,color: Colors.white,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 27.0,top: 7),
                                  child: Icon(CupertinoIcons.map_pin_ellipse,size: 29,color: Colors.white,),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0,top: 5),
                                  child: Text('Genuine Parts',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 4.0,top: 4),
                                  child: Text('Warranty',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 9.0,top: 4),
                                  child: Text('Affordable',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(right: 12.0,top: 4),
                                  child: Text('Pick & Drop',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                                ),

                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 33.0),
                    child: Neumorphic(
                      style:  NeumorphicStyle(lightSource: LightSource.topLeft,depth:4,oppositeShadowLightSource: true,
                          shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.white ,
                          shadowDarkColor: Colors.white ,shadowLightColor:Colors.black45,border: NeumorphicBorder(color: Colors.white)),
                      child: Column(
                        children: [
                          Container(
                            color: Color(0xffeaedf2),
                              width: MediaQuery.of(context).size.width/1.1,
                              height: MediaQuery.of(context).size.height/9.5,
                              child: Padding(
                                  padding: const EdgeInsets.only(top: 23.0),
                                  child: Row(

                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 16.0),
                                        child: Image.asset('assets/icons/bike_image.png',),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 28.0),
                                        child: RichText(text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(text: '    KTM ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700)),
                                              TextSpan(text: ' \n 200 Duke ',style: TextStyle(color: Colors.red,fontWeight: FontWeight.w700)),
                                            ]
                                        )),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 16.0),
                                            child: SizedBox(
                                              height: 30,

                                              child: ElevatedButton(
                                                onPressed: (){
                                                  showCupertinoDialog(context: context, builder: (context){
                                                    return SimpleDialog(
                                                      children: [
                                                        SingleChildScrollView(
                                                          child: Column(
                                                            children: [

                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    );
                                                  });
                                                },style:ElevatedButton.styleFrom(primary: small ),child: Text('Edit'),
                                              ),
                                            ),
                                          ),
                                          IconButton(onPressed: (){
                                            Navigator.push(context, CupertinoPageRoute(builder: (context)=>AddVehicleScreen()));
                                          }, icon: Icon(CupertinoIcons.add_circled,size: 30,))
                                        ],
                                      )
                                    ],
                                  )
                              )
                          )
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Neumorphic(
                      style:  NeumorphicStyle(lightSource: LightSource.topLeft,depth:4,oppositeShadowLightSource: true,
                          shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.white ,
                          shadowDarkColor: Colors.white ,shadowLightColor: Colors.black45,border: NeumorphicBorder(color: Colors.white),shape: NeumorphicShape.flat),
                      child: Column(
                        children: [
                          Neumorphic(
                            style: NeumorphicStyle(depth:10,shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black38 , shadowDarkColor: Colors.black45,shadowLightColor: Colors.transparent),
                            child: Container(
                                color: NeumorphicColors.background,
                              height: MediaQuery.of(context).size.height/6.3,
                              width: MediaQuery.of(context).size.width/1.1,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                            child: Card(
                                              elevation: 19,
                                              shadowColor: Colors.white,
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
                                              color: NeumorphicColors.background,
                                              child: Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  boxShadow: [BoxShadow(color: Colors.white,spreadRadius: 14,blurRadius: 109)],
                                                      borderRadius: BorderRadius.circular(30)
                                            ),
                                                child: Image.asset('assets/icons/setting.png',scale: 6,color: small,),

                                              )
                                                          ),
                                          onTap: (){
                                            Navigator.push(context, CupertinoPageRoute(builder: (context)=>General_Service()));
                                          },
                                ),

                                        GestureDetector(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 8.0),
                                            child: Card(
                                              elevation: 19,
                                              shadowColor: Colors.white,
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
                                              color: NeumorphicColors.background,

                                              child: Container(
                                                decoration: BoxDecoration(
                                                    boxShadow: [BoxShadow(color: Colors.white,spreadRadius: 14,blurRadius: 179)],
                                                    borderRadius: BorderRadius.circular(30)
                                                ),
                                                child:  Image.asset('assets/icons/engine.png',width: 20,color: small,scale: 6,),
                                                width: 50,
                                                height: 50,

                                              ),
                                              ),
                                            ),
                                          onTap: (){
                                            Navigator.push(context, CupertinoPageRoute(builder: (context)=>EngineWork()));
                                          },
                                        ),
                                        GestureDetector(
                                          child: Card(
                                            elevation: 39,
                                            shadowColor: Colors.white,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
                                            color: NeumorphicColors.background,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  boxShadow: [BoxShadow(color: Colors.white,spreadRadius: 14,blurRadius: 179)],
                                                  borderRadius: BorderRadius.circular(30)
                                              ),
                                              child: Image.asset('assets/icons/body.png',height: 5,color:small,width: 6,scale: 6,),
                                              width: 50,
                                              height: 50,
                                            ),
                                          ),
                                          onTap: (){Navigator.push(context, CupertinoPageRoute(builder: (context)=>BodyWork()));},
                                        ),
                                        GestureDetector(
                                          child: Card(
                                            elevation: 39,
                                            shadowColor: Colors.white,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
                                            color: NeumorphicColors.background,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  boxShadow: [BoxShadow(color: Colors.white,spreadRadius: 14,blurRadius: 179)],
                                                  borderRadius: BorderRadius.circular(30)
                                              ),
                                              child:  Image.asset('assets/icons/repair.png',color: small,width: 2,scale: 6,),
                                              width: 50,
                                              height: 50,
                                            ),
                                          ),
                                          onTap: (){Navigator.push(context, CupertinoPageRoute(builder: (context)=>RepairWork()));},
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15.0),
                                        child: Text('General \nService ',style: TextStyle(fontWeight: FontWeight.bold),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 6.0),
                                        child: Text('Engine \n Work ',style: TextStyle(fontWeight: FontWeight.bold),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0.0),
                                        child: Text('Body \nWork ',style: TextStyle(fontWeight: FontWeight.bold),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 16.0),
                                        child: Text('Repair \nWork ',style: TextStyle(fontWeight: FontWeight.bold),),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 45.0,top: 25),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                           myWigets(image: 'assets/icons/calling.png'),
                            Padding(
                              padding: const EdgeInsets.only(left: 28.0),
                              child: Wigets(image: 'assets/icons/what.png',),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
        endDrawer:  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Container(
              height: MediaQuery.of(context).size.height/1.3,
              child: Drawer(
                child: Column(
                  children: [
                    SizedBox(
                      height: 55,
                      child: ListTile(
                        tileColor: Colors.red,
                        title: Text('Home',style: TextStyle(color: Colors.white,fontSize: 22),),
                        leading:  Image.asset('assets/icons/drawer_one.png'),
                      ),
                    ),

                    SizedBox(
                      height: 40,
                      child: ListTile(
                        onTap: (){
                          Navigator.push(context, CupertinoPageRoute(builder: (context)=>MyProfileScreen()));
                        },
                        title: Text('Profile',style: TextStyle(color: Colors.white,fontSize: 22),),
                        leading: Image.asset('assets/icons/profile.png',scale: 29,),
                        hoverColor: Colors.red,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 9.0),
                      child: SizedBox(width:195,child: Divider(color: Colors.white,thickness: 3,)),
                    ),
                    SizedBox(
                      height: 40,
                      child: ListTile(
                        onTap: (){
                          Navigator.push(context, CupertinoPageRoute(builder: (context)=>MyBookingScreen()));
                        },
                        title: Text('My Booking',style: TextStyle(color: Colors.white,fontSize: 22),),
                        leading: Image.asset('assets/icons/book.png',scale: 18,),
                        hoverColor: Colors.red,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 9.0),
                      child: SizedBox(
                          width:195,child: Divider(color: Colors.white,thickness: 3,)),
                    ),
                    SizedBox(
                      height: 45,
                      child: ListTile(
                        title: Padding(
                          padding: const EdgeInsets.only(right: 2.0),
                          child: Text('Real Time Update',style: TextStyle(color: Colors.white,fontSize: 22),),
                        ),
                        leading: Image.asset('assets/icons/update.png',scale: 18,),
                        hoverColor: Colors.blue,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 9.0),
                      child: SizedBox(width:195,child: Divider(color: Colors.white,thickness: 3,)),
                    ),
                    SizedBox(
                      height: 35,
                      child: ListTile(
                        onTap: (){
                          Navigator.push(context, CupertinoPageRoute(builder: (context)=>help()));
                        },
                        title: Text('Help & Support',style: TextStyle(color: Colors.white,fontSize: 22),),
                        leading: Image.asset('assets/icons/help.png',scale: 18,),
                        hoverColor: Colors.blue,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: SizedBox(
                          width:195,child: Divider(color: Colors.white,thickness: 3,)),
                    ),

                    SizedBox(
                      height: 40,
                      child: ListTile(
                        onTap: (){
                          Navigator.push(context, CupertinoPageRoute(builder: (context)=>Become_Partner()));
                        },
                        title: Text('Become Partner',style: TextStyle(color: Colors.white,fontSize: 22),),
                        leading: Image.asset('assets/icons/partner.png',scale: 18,),
                        hoverColor: Colors.blue,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 9.0),
                      child: SizedBox(
                          width: 195,child: Divider(color: Colors.white,thickness: 3,)),
                    ),

                    SizedBox(
                      height: 44,
                      child: ListTile(
                        title: Text('Share',style: TextStyle(color: Colors.white,fontSize: 22),),
                        leading: Image.asset('assets/icons/share.png',scale: 18,),
                        hoverColor: Colors.blue,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 9.0),
                      child: SizedBox(
                          width: 195,child: Divider(color: Colors.white,thickness: 3,)),
                    ),
                    SizedBox(
                      height: 44,
                      child: ListTile(
                        onTap: (){},
                        title: Text('About',style: TextStyle(color: Colors.white,fontSize: 22),),
                        leading: Image.asset('assets/icons/about.png',scale: 18,),
                        hoverColor: Colors.blue,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: SizedBox(width: 195,child: Divider(color: Colors.white,thickness: 3,)),
                    ),
                    SizedBox(
                      height: 49,
                      child: ListTile(
                        onTap: (){
                          Navigator.push(context, CupertinoPageRoute(builder: (context)=>LoginScreen()));
                        },
                        title: Text('Log Out',style: TextStyle(color: Colors.white,fontSize: 22),),
                        leading: Image.asset('assets/icons/logout.png',scale: 18,),
                        hoverColor: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              width: 240,
            ),
          ),
        ),
        bottomNavigationBar:   Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 22.0,right: 23),
              child: Neumorphic(
                drawSurfaceAboveChild: true,
                margin: EdgeInsets.only(bottom: 20),
                style:  NeumorphicStyle(lightSource: LightSource.topLeft,depth:4,oppositeShadowLightSource: true,
                    shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black45, shape: NeumorphicShape.flat,
                    shadowDarkColor: Colors.white ,shadowLightColor: Colors.black,border: NeumorphicBorder(color: Colors.white)),
                child: Container(
                  color: Color(0xffeaedf2),
                  margin: EdgeInsets.only(bottom: 0),
                  height: MediaQuery.of(context).size.height/15,
                  width: MediaQuery.of(context).size.width/15,
                  child: Column(
                    children: [

                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             Padding(
                               padding: const EdgeInsets.only(left: 8.0),
                               child: Image.asset('assets/icons/homeee.png',width: 26 ,),
                             ),

                         Neumorphic(
                                style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black45 , shadowDarkColor: Colors.black45 ,shadowLightColor: Colors.transparent),
                                child: Container(
                                  height: 50,
                                  width: 2,
                                ),
                              ),

                             GestureDetector(onTap:(){
                                Navigator.push(context, CupertinoPageRoute(builder: (context) =>LocationScreen()));
                              },child: Image.asset('assets/icons/location.png',width: 26 ,)),

                            Neumorphic(
                                style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black45 , shadowDarkColor: Colors.black45 ,shadowLightColor: Colors.transparent),
                                child: Container(
                                  height: 50,
                                  width: 2,
                                ),
                              ),

                             GestureDetector(child: Image.asset('assets/icons/kinggg.png',color: Colors.black,),onTap: (){
                                Navigator.push(context, CupertinoPageRoute(builder: (context)=>subscrip()));
                              },),

                            Neumorphic(
                                style: NeumorphicStyle(depth:19,shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black45 , shadowDarkColor: Colors.black45 ,shadowLightColor: Colors.transparent),
                                child: Container(
                                  height: 50,
                                  width: 2,
                                ),
                              ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, CupertinoPageRoute(builder: (context)=>ServiceStatus()));
                            },
                              child: Image.asset('assets/icons/rel.png',scale: 3.6,)),

                           Neumorphic(
                                style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black45 , shadowDarkColor: Colors.black45,shadowLightColor: Colors.transparent),
                                child: Container(
                                  height: 50,
                                  width: 2,
                                ),
                              ),

                             InkWell(onTap: ()=> _key.currentState!.openEndDrawer(),
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Icon(Icons.menu,size: 30,),
                                  )),
                          ],
                        ),



                    ],
                  ),
                ),
              ),
            ),
          ),
        )
    );
  }

  Future<bool> _return() async{
    return await showCupertinoDialog(context: context, builder: (context)=> CupertinoAlertDialog(
      content: Column(
        children: [
          Text('Do You Want to Close Your App'),
        ],
      ),
      actions: [
        TextButton(onPressed: (){
          Navigator.of(context).pop(false);
        }, child: Text('No')),
        TextButton(onPressed: (){
          Navigator.of(context).pop(true);
        }, child: Text('Yes')),

      ],
    )
    );
  }
}

class newpage extends StatefulWidget {
  const newpage({Key? key}) : super(key: key);

  @override
  _newpageState createState() => _newpageState();
}

class _newpageState extends State<newpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SafeArea(child:
      Center(child:  Hero(tag: '', child: FlutterLogo(size: 100,)),)
      ),
    );
  }
}



// CarouselSlider(
// options: CarouselOptions(
// enlargeCenterPage: false,
// disableCenter: true,
// enableInfiniteScroll: true,
// autoPlay: true,
// ),
// items: images.map((e) => ClipRRect(
// borderRadius: BorderRadius.circular(2),
// child: Stack(
// fit: StackFit.expand,
// children: [
// Image.network(e,
// width: 900,
// height: 350,
// fit: BoxFit.cover,)
// ],
// ),
// )).toList(),
//
// ),





// disableCenter: false,
// pageSnapping: false,
// enlargeCenterPage: false