import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/config.dart';
import 'package:two_wheel_vehicle/screens/payment_Screen.dart';
import 'package:two_wheel_vehicle/screens/paymet_method_screen.dart';

import '../widgets.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicColors.background,
      appBar: AppBar(
        elevation: 0,
        title: Text(' Checkout',style: TextStyle(color: Colors.black),),
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
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0,top: 19),
                      child: Text("  Vehicles Details ",style: TextStyle(fontSize: 17),),
                    ),
                  ],
                ),
                 Neumorphic(
                    margin: EdgeInsets.all(10),
                    style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.white , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: RichText(text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(text: "     KTM",style: TextStyle(color: Colors.black)),
                              TextSpan(text: " \n 200 DUKE", style: TextStyle(color: Colors.red)),
                            ]
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 128.0),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0,right: 18,top: 08),
                            child: Image.asset('assets/icons/bike_image.png'),
                          ),
                        )
                      ],
                    ),
                  ),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0,top: 15),
                      child: Text('Price Breakup',style: TextStyle(fontSize: 17),),
                    ),
                  ],
                ),
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Neumorphic(
                          margin: EdgeInsets.all(20),
                          style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                          child: Column(
                              children: [
                                SizedBox(
                                  height: 29,
                                  child: ListTile(
                                    title: Text('Service Cost',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 15),),
                                    trailing: Text(' ₹ 199',style: TextStyle(fontWeight: FontWeight.w700),),
                                  ),
                                ),
                                SizedBox(
                                  height: 29,
                                  child: ListTile(
                                    title: Text('Additional Charges',style: TextStyle(fontWeight: FontWeight.w300),),
                                    trailing: Text(' ₹ 0',style: TextStyle(fontWeight: FontWeight.w700),),
                                  ),
                                ),
                                ListTile(
                                  title: Text('Discount Applied',style: TextStyle(fontWeight: FontWeight.w300),),
                                  trailing: Text(' ₹ 0',style: TextStyle(fontWeight: FontWeight.w700),),
                                ),
                                shape(),
                                SizedBox(
                                  height: 29,
                                  child: ListTile(
                                    title: Text('Sub Total ',style: TextStyle(fontWeight: FontWeight.w300),),
                                    trailing: Text(' ₹ 199',style: TextStyle(fontWeight: FontWeight.w700),),
                                  ),
                                ),
                                SizedBox(
                                  height: 29,
                                  child: ListTile(
                                    title: Text('GST ? Tax',style: TextStyle(fontWeight: FontWeight.w300),),
                                    trailing: Text(' ₹ 0',style: TextStyle(fontWeight: FontWeight.w700),),
                                  ),
                                ),
                                ListTile(
                                  title: Text('Total',style: TextStyle(fontWeight: FontWeight.w300),),
                                  trailing: Text(' ₹ 199',style: TextStyle(fontWeight: FontWeight.w700),),
                                ),
                              ],
                            )
                          )
                        ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 45,
                  child: ListTile(
                    title: Text(' Total Savings (Including Cashback)',style: TextStyle(color: Colors.green),),
                    trailing: Text('₹ 0',style: TextStyle(fontWeight: FontWeight.w700),),
                  ),
                ),

                shape(),
                SizedBox(
                  height: 40,
                  child: ListTile(
                    title: Text(' % Apply Coupon Code',style: TextStyle(color: Colors.black),),
                    trailing: Icon(CupertinoIcons.forward)
                  ),
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
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
                                BoxShadow(color: small, spreadRadius:3, blurRadius: 7)
                              ],
                              borderRadius: BorderRadius.circular(14)
                          ),
                          child: SizedBox(
                            height: 50,
                            child:  ElevatedButton(
                              onPressed: (){
                                Navigator.push(context, CupertinoPageRoute(builder: (context)=>PaymentMethodScreen()));
                              },style: ElevatedButton.styleFrom(shadowColor: Color(0xfff93527),primary: small),child: Text(' Pay Now',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 19),),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0.0,top: 35),
                      child: InkWell(
                        highlightColor: Colors.blue.withOpacity(0.4),
                        splashColor: Colors.green.withOpacity(0.5),
                        child: Container(
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              
                              borderRadius: BorderRadius.circular(14)
                          ),

                          child: SizedBox(
                            height: 50,
                            child:  Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: ElevatedButton(
                                onPressed: (){
                                },style: ElevatedButton.styleFrom(primary: Colors.black),child: Text(' Pay Later',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 19),),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                )
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
