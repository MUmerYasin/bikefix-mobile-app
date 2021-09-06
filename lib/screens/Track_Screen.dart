
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart' as prefix;
import 'package:timeline_tile/timeline_tile.dart';

import '../config.dart';
import '../widgets.dart';
import 'General_Service_Screen.dart';
import 'Payment_Success.dart';

class Track_Order_Screen extends StatefulWidget {
  const Track_Order_Screen({Key? key}) : super(key: key);

  @override
  _Track_Order_ScreenState createState() => _Track_Order_ScreenState();
}

class _Track_Order_ScreenState extends State<Track_Order_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicColors.background,
      appBar: AppBar(
        elevation: 0,
        title: Text('Track Order',style: TextStyle(color: Colors.black),),
        backgroundColor: NeumorphicColors.background,
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Row(
            children: [
              appsign()
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
                children: [
            Padding(
            padding: const EdgeInsets.only(top: 38.0),
            child: Neumorphic(
              margin: EdgeInsets.only(left: 10,right: 10),
              style: NeumorphicStyle(
                  shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black ,
                  shadowDarkColor: Colors.black,shadowLightColor: Colors.white
              ),
              child: Column(
                  children: [
                    ListTile(
                      title: Text("Order ID"),
                      trailing: Text('645238',style: TextStyle(fontWeight: FontWeight.w700),),
                    ),
                    shape(),
                    ListTile(
                      title: Text("Service Center"),
                      trailing: Text("Bikefixup Workshop #1",style: TextStyle(fontWeight: FontWeight.w700),)
                    ),
                    shape(),
                    ListTile(
                        title: Text("Require Pickup",style: TextStyle(fontWeight: FontWeight.w700),),
                        trailing: Image.asset('assets/icons/tick_track_order_icon.png',scale: 2,)
                    ),
                  ],
                )

            ),
          ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 45.0,top: 27),
                        child: Text('Track Details',style: TextStyle(fontSize: 19),),
                      )

                    ],
                  ),
                  
                  Neumorphic(
                     margin: EdgeInsets.all(15),
                     style: NeumorphicStyle(
                         shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black ,
                         shadowDarkColor: Colors.black,shadowLightColor: Colors.white
                     ),
                     child: Column(
                       children: [


                         Stack(
                           alignment : AlignmentDirectional.bottomCenter,

                           children: [
                             shape(),
                             SizedBox(
                               child: prefix.TimelineTile(
                                 startChild: Row(mainAxisAlignment: MainAxisAlignment.start,
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.only(left: 14.0),
                                       child: RichText(text: TextSpan(
                                           children: <TextSpan>[
                                             TextSpan(text: '03:10pm',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12)),
                                             TextSpan(text: '\n05/04/2021',style: TextStyle(fontWeight: FontWeight.w300,color: Colors.black,fontSize: 12)),
                                           ]
                                       )),
                                     )

                                   ],
                                 ),
                                 beforeLineStyle: prefix.LineStyle(color: Colors.green,thickness: 3),
                                 indicatorStyle: prefix.IndicatorStyle(
                                     indicator: Container(
                                       child: Image.asset('assets/icons/tick_track_order_icon.png'),
                                     )

                                 ),
                                 alignment: prefix.TimelineAlign.manual,lineXY: 0.3,
                                 isFirst: true,
                                 endChild: Container(

                                   width: MediaQuery.of(context).size.width,
                                   height: 50,
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     children: [
                                       Padding(
                                         padding: const EdgeInsets.only(left: 18.0),
                                         child: Text(OrderRecieved,style: TextStyle(fontSize: 13),),
                                       )
                                     ],
                                   ),
                                 ),
                               ),
                               height: 47,
                             ),
                           ],
                         ),

                         Stack(
                           alignment : AlignmentDirectional.bottomCenter,
                           children: [
                             shape(),
                             SizedBox(
                               height: 47,
                               child: prefix.TimelineTile(
                                 beforeLineStyle: prefix.LineStyle(color: Colors.green,thickness: 3),
                                 indicatorStyle: prefix.IndicatorStyle(
                                     indicator:  contain(image: 'assets/icons/suc.png',)

                                 ),
                                 alignment: prefix.TimelineAlign.manual,lineXY: 0.3,
                                 endChild: Container(
                                   width: MediaQuery.of(context).size.width,
                                   height: 50,
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     children: [
                                       Padding(
                                         padding: const EdgeInsets.only(left: 18.0),
                                         child: Text(OrderConfirmed,style: TextStyle(fontSize: 13),),
                                       )
                                     ],
                                   ),
                                 ),
                               ),
                             ),
                           ],
                         ),
                         Stack(
                           alignment : AlignmentDirectional.bottomCenter,
                           children: [
                             shape(),
                             SizedBox(
                               height: 47,
                               child: prefix.TimelineTile(
                                 beforeLineStyle: prefix.LineStyle(color: Colors.green,thickness: 3),
                                 indicatorStyle: prefix.IndicatorStyle(
                                     indicator: contain(image: 'image/heavy.png',)

                                 ),
                                 alignment: prefix.TimelineAlign.manual,lineXY: 0.3,
                                 endChild: Container(
                                   margin: EdgeInsets.only(left: 10),
                                   width: MediaQuery.of(context).size.width,
                                   height: 50,
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     children: [
                                       Padding(
                                         padding: const EdgeInsets.only(left: 0.0),
                                         child: Text(Pickup,style: TextStyle(fontSize: 13),),
                                       )
                                     ],
                                   ),
                                 ),
                               ),
                             ),
                           ],
                         ),
                         Stack(
                           alignment : AlignmentDirectional.bottomCenter,
                           children: [
                             shape(),
                             SizedBox(
                               height: 47,
                               child: prefix.TimelineTile(
                                 beforeLineStyle: prefix.LineStyle(color: Colors.green,thickness: 3),
                                 indicatorStyle: prefix.IndicatorStyle(
                                   indicator: contain(image: 'image/jin.png',),

                                 ),
                                 alignment: prefix.TimelineAlign.manual,lineXY: 0.3,
                                 endChild: Container(
                                   width: MediaQuery.of(context).size.width,
                                   height: 50,
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     children: [
                                       Padding(
                                         padding: const EdgeInsets.only(left: 18.0),
                                         child: Text(vehiclePickup,style: TextStyle(fontSize: 13),),
                                       )
                                     ],
                                   ),
                                 ),
                               ),
                             ),
                           ],
                         ),
                         Stack(
                           alignment : AlignmentDirectional.bottomCenter,
                           children: [
                             shape(),
                             SizedBox(
                               height: 47,
                               child: prefix.TimelineTile(
                                 beforeLineStyle: prefix.LineStyle(color: Colors.green,thickness: 3),
                                 indicatorStyle: prefix.IndicatorStyle(
                                     indicator: contain(image: 'assets/icons/setting.png',)
                                 ),
                                 alignment: prefix.TimelineAlign.manual,lineXY: 0.3,
                                 endChild: Container(
                                   margin: EdgeInsets.only(right: 0),
                                   width: MediaQuery.of(context).size.width,
                                   height: 50,
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     children: [
                                       Padding(
                                         padding: const EdgeInsets.only(left: 18.0),
                                         child: Text(serviceProgress,style: TextStyle(fontSize: 13),),
                                       )
                                     ],
                                   ),
                                 ),
                               ),
                             ),
                           ],
                         ),
                         Stack(
                           alignment : AlignmentDirectional.bottomCenter,
                           children: [
                             shape(),
                             SizedBox(
                               height: 47,
                               child: prefix.TimelineTile(
                                 beforeLineStyle: prefix.LineStyle(color: Colors.green,thickness: 3),
                                 indicatorStyle: prefix.IndicatorStyle(
                                     indicator: contain(image: 'assets/icons/setting.png',)

                                 ),
                                 endChild: Container(
                                   margin: EdgeInsets.only(right: 0),
                                   width: MediaQuery.of(context).size.width,
                                   height: 50,
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     children: [
                                       Padding(
                                         padding: const EdgeInsets.only(left: 18.0),
                                         child: Text(complete,style: TextStyle(fontSize: 13),),
                                       )
                                     ],
                                   ),
                                 ),
                                 alignment: prefix.TimelineAlign.manual,lineXY: 0.3,
                               ),
                             ),
                           ],
                         ),
                         Stack(
                           alignment : AlignmentDirectional.bottomCenter,
                           children: [
                             shape(),
                             SizedBox(
                               height: 47,
                               child: prefix.TimelineTile(
                                 beforeLineStyle: prefix.LineStyle(color: Colors.green,thickness: 3),
                                 indicatorStyle: prefix.IndicatorStyle(
                                     indicator: contain(image: 'assets/icons/drooped.png',)

                                 ),
                                 endChild: Container(
                                   width: MediaQuery.of(context).size.width,
                                   height: 50,
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     children: [
                                       Padding(
                                         padding: const EdgeInsets.only(left: 18.0),
                                         child: Text(dropped,style: TextStyle(fontSize: 13),),
                                       )
                                     ],
                                   ),
                                 ),
                                 alignment: prefix.TimelineAlign.manual,lineXY: 0.3,
                               ),
                             ),
                           ],
                         ),
                         Stack(
                           alignment : AlignmentDirectional.bottomCenter,
                           children: [

                             SizedBox(
                               height: 47,
                               child: prefix.TimelineTile(
                                 beforeLineStyle: prefix.LineStyle(color: Colors.green,thickness: 3),

                                 alignment: prefix.TimelineAlign.manual,lineXY: 0.3,
                                 isLast: true,
                                 indicatorStyle: prefix.IndicatorStyle(
                                     indicator: Container(
                                       child: Image.asset('assets/icons/tick_track_order_icon.png'),
                                     )

                                 ),
                                 endChild: Container(
                                   width: MediaQuery.of(context).size.width,
                                   height: 50,
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     children: [
                                       Padding(
                                         padding: const EdgeInsets.only(left: 18.0),
                                         child: Text(visit,style: TextStyle(fontSize: 12),),
                                       )
                                     ],
                                   ),
                                 ),

                               ),
                             ),
                           ],
                         )

                       ],
                     )
                   ),


                  Center(
                    child:  Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Card(
                        margin: EdgeInsets.only(bottom: 20),
                        elevation: 20,
                        shadowColor: Color(0xfff93527),
                        child: SizedBox(
                          width: 140,
                          height: 55,
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>General_Service()));
                            },style: ElevatedButton.styleFrom(shadowColor: Color(0xfff93527),primary: Colors.red),child: Text('Proceed'),
                          ),
                        ),
                      ),
                    ),
                  ),

      ]
    )

    )   
        )
    )
    );
  }
}
