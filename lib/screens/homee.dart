import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:two_wheel_vehicle/config.dart';
import 'package:two_wheel_vehicle/screens/paymet_method_screen.dart';
import 'package:two_wheel_vehicle/screens/subscription.dart';
import 'package:two_wheel_vehicle/widgets.dart';

import 'Become_Partner.dart';
import 'Body_Work_Screen.dart';
import 'Engine_Work_Screen.dart';
import 'General_Service_Screen.dart';
import 'Repair_Work_Screen.dart';
import 'add_vehicle_screen.dart';
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
    'https://beactivedecatur.com/wp-content/uploads/2021/04/istockphoto-1193475552-612x612-1.jpg',
    'https://media.istockphoto.com/vectors/sport-motorbike-racer-riding-fast-vector-id1069905784?b=1&k=6&m=1069905784&s=612x612&w=0&h=Zv340i7n_yPYtD62g1leCQV-Ai0SkVKCR2peuU_8NO0=',
    'http://partslo.pk/wp-content/uploads/2020/09/70cc-All-Parts.png'
    // 'https://media.istockphoto.com/photos/green-leaf-with-dew-on-dark-nature-background-picture-id1050634172?s=612x612',
    // 'https://media.istockphoto.com/photos/mountain-landscape-picture-id517188688?s=612x612',
    // // 'https://www.istockphoto.com/en/photo/woman-standing-and-looking-at-lago-di-carezza-in-dolomites-gm1038870630-278083784',
    // 'https://media.istockphoto.com/photos/picturesque-morning-in-plitvice-national-park-colorful-spring-scene-picture-id1093110112?s=612x612',
    // 'https://media.istockphoto.com/photos/connection-with-nature-picture-id1174472274?s=612x612',
    // 'https://media.istockphoto.com/photos/in-the-hands-of-trees-growing-seedlings-bokeh-green-background-female-picture-id1181366400',
    // 'https://media.istockphoto.com/photos/winding-road-picture-id1173544006?s=612x612',
    // 'https://media.istockphoto.com/photos/sunset-with-pebbles-on-beach-in-nice-france-picture-id1157205177?s=612x612',
    // 'https://media.istockphoto.com/photos/waves-of-water-of-the-river-and-the-sea-meet-each-other-during-high-picture-id1166684037?s=612x612',
    // 'https://media.istockphoto.com/photos/happy-family-mother-father-children-son-and-daughter-on-sunset-picture-id1159094800?s=612x612',
    // 'https://media.istockphoto.com/photos/butterflies-picture-id1201252148?s=612x612',
    // 'https://media.istockphoto.com/photos/beautiful-young-woman-blows-dandelion-in-a-wheat-field-in-the-summer-picture-id1203963917?s=612x612',
    // 'https://media.istockphoto.com/photos/summer-meadow-picture-id1125637203?s=612x612',
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
            Text('')
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
                    style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),shadowLightColor: Colors.white,shadowDarkColorEmboss: Colors.black54, shadowLightColorEmboss: Colors.white,shadowDarkColor: Colors.black54,color: NeumorphicColors.background),
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
                              Image.network(e,
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
                          shadowDarkColor: Colors.white ,shadowLightColor: Colors.white,border: NeumorphicBorder(color: Colors.white)),
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
                          shadowDarkColor: Colors.white ,shadowLightColor: Colors.white,border: NeumorphicBorder(color: Colors.white)),
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
                                                onPressed: (){},style:ElevatedButton.styleFrom(primary: small ),child: Text('Edit'),
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
                          shadowDarkColor: Colors.white ,shadowLightColor: Colors.white,border: NeumorphicBorder(color: Colors.white),shape: NeumorphicShape.flat),
                      child: Column(
                        children: [
                          Neumorphic(
                            style: NeumorphicStyle(depth:10,shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black38 , shadowDarkColor: Colors.black45,shadowLightColor: Colors.transparent),
                            child: Container(
                                color: Color(0xffeaedf2),
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
                                              elevation: 5,
                                              shadowColor: Colors.white,
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
                                              color: NeumorphicColors.background,
                                              child: Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
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
                                              elevation: 5,
                                              shadowColor: Colors.white,
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
                                              color: NeumorphicColors.background,
                                              child: Container(
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
                                            elevation: 5,
                                            shadowColor: Colors.white,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
                                            color: NeumorphicColors.background,
                                            child: Container(
                                              child: Image.asset('assets/icons/body.png',height: 5,color:small,width: 6,scale: 6,),
                                              width: 50,
                                              height: 50,
                                            ),
                                          ),
                                          onTap: (){Navigator.push(context, CupertinoPageRoute(builder: (context)=>BodyWork()));},
                                        ),
                                        GestureDetector(
                                          child: Card(
                                            elevation: 5,
                                            shadowColor: Colors.white,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
                                            color: NeumorphicColors.background,
                                            child: Container(
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
                                        child: Text('Engine \nWork ',style: TextStyle(fontWeight: FontWeight.bold),),
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
                        padding: const EdgeInsets.all(8.0),
                        child: Row(

                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0,top: 19),
                              child: Neumorphic(

                                curve: Curves.bounceIn,
                                drawSurfaceAboveChild: true,
                                style: NeumorphicStyle(depth:10,shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black45 , shadowDarkColor: Colors.black45,shadowLightColor: Colors.transparent),
                                child: Container(

                                  decoration: BoxDecoration(
                                      color: small,

                                  ),
                                  width: 40,
                                  height: 40,
                                  child: Icon(FontAwesomeIcons.phone,color: Colors.white,),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0,top: 19),
                              child: Neumorphic(

                                drawSurfaceAboveChild: true,
                                style: NeumorphicStyle(depth:5,oppositeShadowLightSource:true,lightSource: LightSource.topLeft,shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss:
                                Colors.black45 , shadowDarkColor: Colors.black45 ,shadowLightColor: Colors.transparent,border: NeumorphicBorder(color: Colors.white,)),

                                child: GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      contain = !contain;
                                    });
                                  },
                                  child: AnimatedContainer(
                                    width: 40,
                                    curve: Curves.easeInCubic,
                                    height: 40,
                                    duration: Duration(seconds: 2),
                                    child: Image.asset('assets/icons/what.png',scale: 29,width: 200,)
                                  ),
                                ),
                              ),
                            )

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
        bottomNavigationBar:  Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Neumorphic(
              drawSurfaceAboveChild: true,
              margin: EdgeInsets.only(bottom: 20),
              style:  NeumorphicStyle(lightSource: LightSource.topLeft,depth:4,oppositeShadowLightSource: true,
                  shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black45, shape: NeumorphicShape.flat,
                  shadowDarkColor: Colors.white ,shadowLightColor: Colors.white,border: NeumorphicBorder(color: Colors.white)),
              child: Container(
                color: Color(0xffeaedf2),
                margin: EdgeInsets.only(bottom: 0),
                height: MediaQuery.of(context).size.height/14.5,
                width: MediaQuery.of(context).size.width/1.1,
                child: Column(
                  children: [

                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0,left:0),
                          child: Image.asset('assets/icons/home.png',scale: 11 ,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 17.0),
                          child: Neumorphic(
                            style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black45 , shadowDarkColor: Colors.black45 ,shadowLightColor: Colors.transparent),
                            child: Container(
                              height: 50,
                              width: 2,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 3.0,left: 15),
                          child: Image.asset('assets/icons/location.png',scale: 25 ,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Neumorphic(
                            style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black45 , shadowDarkColor: Colors.black45 ,shadowLightColor: Colors.transparent),
                            child: Container(
                              height: 50,
                              width: 2,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 3.0,left: 10),
                          child: GestureDetector(child: Image.asset('assets/icons/king.png',scale: 50),onTap: (){
                            Navigator.push(context, CupertinoPageRoute(builder: (context)=>subscrip()));
                          },),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Neumorphic(
                            style: NeumorphicStyle(depth:19,shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black45 , shadowDarkColor: Colors.black45 ,shadowLightColor: Colors.transparent),
                            child: Container(
                              height: 50,
                              width: 2,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0,left: 13),
                          child: Image.asset('assets/icons/rel.png',scale: 3.6,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Neumorphic(
                            style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black45 , shadowDarkColor: Colors.black45,shadowLightColor: Colors.transparent),
                            child: Container(
                              height: 50,
                              width: 2,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0,left:6),
                          child: InkWell(onTap: ()=> _key.currentState!.openEndDrawer(),
                              child: Icon(Icons.menu,size: 30,)),
                        )




                      ],
                    ),


                  ],
                ),
              ),
            ),
          ),
        ),
      ),
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