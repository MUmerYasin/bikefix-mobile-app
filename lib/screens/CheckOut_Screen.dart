import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/config.dart';

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
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0,top: 19),
                      child: Text("  Vehicles Details ",style: TextStyle(fontSize: 17),),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Neumorphic(
                    style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.white , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white, blurRadius: 220
                          )
                        ]
                      ),
                      width: 320,
                      height: 100,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: "     KTM",style: TextStyle(color: Colors.black)),
                                TextSpan(text: " \n 200 DUKE", style: TextStyle(color: Colors.red)),
                              ]
                            )),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 128.0),
                            child: Image.asset('assets/icons/bike_image.png'),
                          )
                        ],
                      ),
                    ),
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
                        padding: const EdgeInsets.only(top: 28.0),
                        child: Neumorphic(
                          style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                          child: Container(
                            width: 320,
                            height: 240,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 29,
                                  child: ListTile(
                                    title: Text('Service Cost',style: TextStyle(fontWeight: FontWeight.w300),),
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
                                Neumorphic(
                                  style: NeumorphicStyle(
                                    depth: NeumorphicTheme.embossDepth(context), shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.white,spreadRadius: 20,
                                          )
                                        ]
                                    ),
                                    width: 280,
                                    height: 3,

                                  ),
                                ),
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

                Neumorphic(
                  style: NeumorphicStyle(
                    depth: NeumorphicTheme.embossDepth(context), shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,),
                  child: Container(
                    width: 300,
                    height: 3,
                    color: Colors.white,
                  ),
                ),
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckOut()));
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
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckOut()));
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
