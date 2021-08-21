import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:two_wheel_vehicle/screens/paymet_method_screen.dart';
import 'package:two_wheel_vehicle/widgets.dart';

import 'Body_Work_Screen.dart';
import 'Engine_Work_Screen.dart';
import 'General_Service_Screen.dart';
import 'Repair_Work_Screen.dart';

class Homee extends StatefulWidget {
  const Homee({Key? key}) : super(key: key);

  @override
  _HomeeState createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {

  final List<String> images = [
    'https://media.istockphoto.com/photos/young-woman-snorkeling-with-coral-reef-fishes-picture-id939931682?s=612x612',
    'https://media.istockphoto.com/photos/woman-relaxing-in-sleeping-bag-on-red-mat-camping-travel-vacations-in-picture-id1210134412?s=612x612',
    'https://media.istockphoto.com/photos/green-leaf-with-dew-on-dark-nature-background-picture-id1050634172?s=612x612',
    'https://media.istockphoto.com/photos/mountain-landscape-picture-id517188688?s=612x612',
    // 'https://www.istockphoto.com/en/photo/woman-standing-and-looking-at-lago-di-carezza-in-dolomites-gm1038870630-278083784',
    'https://media.istockphoto.com/photos/picturesque-morning-in-plitvice-national-park-colorful-spring-scene-picture-id1093110112?s=612x612',
    'https://media.istockphoto.com/photos/connection-with-nature-picture-id1174472274?s=612x612',
    'https://media.istockphoto.com/photos/in-the-hands-of-trees-growing-seedlings-bokeh-green-background-female-picture-id1181366400',
    'https://media.istockphoto.com/photos/winding-road-picture-id1173544006?s=612x612',
    'https://media.istockphoto.com/photos/sunset-with-pebbles-on-beach-in-nice-france-picture-id1157205177?s=612x612',
    'https://media.istockphoto.com/photos/waves-of-water-of-the-river-and-the-sea-meet-each-other-during-high-picture-id1166684037?s=612x612',
    'https://media.istockphoto.com/photos/happy-family-mother-father-children-son-and-daughter-on-sunset-picture-id1159094800?s=612x612',
    'https://media.istockphoto.com/photos/butterflies-picture-id1201252148?s=612x612',
    'https://media.istockphoto.com/photos/beautiful-young-woman-blows-dandelion-in-a-wheat-field-in-the-summer-picture-id1203963917?s=612x612',
    'https://media.istockphoto.com/photos/summer-meadow-picture-id1125637203?s=612x612',
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _return,
      child: Scaffold(
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
        body: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Neumorphic(
                    style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
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
                      style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.transparent),
                      child: Container(

                        decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(0)
                        ),
                        width: 300,
                        height: 70,
                        child: Column(
                          children: [

                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,top: 14),
                                  child: Icon(Icons.settings,size: 33,color: Colors.white,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 45.0),
                                  child: Icon(Icons.check_circle_outline,size: 33,color: Colors.white,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 35.0),
                                  child: Icon(Icons.account_balance_wallet_rounded,size: 33,color: Colors.white,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 44.0),
                                  child: Icon(CupertinoIcons.map_pin_ellipse,size: 33,color: Colors.white,),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text('Genuine Parts',style: TextStyle(color: Colors.white),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 17.0),
                                  child: Text('Warranty',style: TextStyle(color: Colors.white),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 13.0),
                                  child: Text('Affordable',style: TextStyle(color: Colors.white),),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 14.0),
                                  child: Text('Pick & Drop',style: TextStyle(color: Colors.white),),
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
                      style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.transparent),
                      child: Column(
                        children: [
                          Container(
                              width: 330,
                              height: 100,
                              child: Padding(
                                  padding: const EdgeInsets.only(top: 23.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset('assets/icons/bike_image.png'),
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
                                            padding: const EdgeInsets.only(left: 24.0),
                                            child: SizedBox(
                                              height: 30,

                                              child: ElevatedButton(
                                                onPressed: (){},style:ElevatedButton.styleFrom(primary: Colors.red),child: Text('Edit'),
                                              ),
                                            ),
                                          ),
                                          IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.add_circled,size: 30,))
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
                    padding: const EdgeInsets.only(top: 48.0),
                    child: Neumorphic(
                      style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.transparent),
                      child: Column(
                        children: [
                          Neumorphic(
                            style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.transparent),
                            child: Container(
                              height: 110,
                              width: 330,
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
                                              shadowColor: Colors.white,
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
                                              color: NeumorphicColors.background,
                                              child: Container(
                                                child: Icon(CupertinoIcons.settings,color: Colors.red,size: 32,),
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(30)
                                                ),
                                              ),
                                            ),
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>General_Service()));
                                            
                                          },
                                        ),
                                        GestureDetector(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 8.0),
                                            child: Card(
                                              shadowColor: Colors.white,
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
                                              color: NeumorphicColors.background,
                                              child: Container(
                                                child: Icon(FontAwesomeIcons.carCrash,color: Colors.red,),

                                                width: 50,
                                                height: 50,
                                              ),
                                            ),
                                          ),
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>EngineWork()));
                                          },
                                        ),
                                        GestureDetector(
                                          child: Card(
                                            shadowColor: Colors.white,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
                                            color: NeumorphicColors.background,
                                            child: Container(
                                              child: Icon(Icons.work_outline,size: 33,color: Colors.red,),
                                              width: 50,
                                              height: 50,
                                            ),
                                          ),
                                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>BodyWork()));},
                                        ),
                                        GestureDetector(
                                          child: Card(
                                            shadowColor: Colors.white,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
                                            color: NeumorphicColors.background,
                                            child: Container(
                                              child: Icon(Icons.car_repair,color: Colors.red,size: 33,),
                                              width: 50,
                                              height: 50,
                                            ),
                                          ),
                                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>RepairWork()));},
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
                      Row(

                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0,top: 19),
                            child: Neumorphic(
                              style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.transparent),
                              child: Container(
                                color: Colors.red,
                                width: 40,
                                height: 40,
                                child: Icon(FontAwesomeIcons.phone,color: Colors.white,),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0,top: 19),
                            child: Neumorphic(
                              style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.transparent),
                              child: Container(
                              child: Container(
                                width: 40,
                                height: 40,
                                child: Icon(FontAwesomeIcons.whatsapp,color: Colors.green,),
                              ),
                            ),
                          )
                              )
                        ],
                      )
                    ],
                  )



                ],
              ),
            ),
          ),
        ),
        endDrawer: SizedBox(
          child: Drawer(
            child: Column(
              children: [
                SizedBox(
                  child: ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentMethodScreen()));
                    },
                    leading: Text('Login',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                  ),
                )
              ],
            ),

          ),
          width: 240,
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




// disableCenter: false,
// pageSnapping: false,
// enlargeCenterPage: false