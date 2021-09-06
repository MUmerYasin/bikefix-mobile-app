import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:two_wheel_vehicle/screens/payment_Screen.dart';
import 'package:two_wheel_vehicle/widgets.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  _PaymentMethodScreenState createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {

  String radioButtonItem = 'ONE';
  int id = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicColors.background,
      appBar: AppBar(
        elevation: 0,
        title: Text('Payment Method',style: TextStyle(color: Colors.black),),
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
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Neumorphic(
                    margin: EdgeInsets.all(15),
                    style: NeumorphicStyle(
                        shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black
                    ),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 28.0),
                              child: Text('Credit/ Debit Card',style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.w500
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15.0),
                              child: Radio<int>(value: 1, groupValue: null, onChanged: (val){
                                setState(() {

                                });
                              }),
                            )
                          ],
                        ),
                      ),
                    ),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 60.0,top: 10),
                      child: Text('UPI',style: TextStyle(fontSize: 16),),
                    )
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Neumorphic(
                    margin: EdgeInsets.all(15),
                    style: NeumorphicStyle(
                        shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black),

                    child: Column(
                          children: [
                            ListTile(
                              leading: Icon(FontAwesomeIcons.amazon,color: Colors.black,),
                              trailing: Radio<int>(value: 0, groupValue: id,activeColor: Colors.red, onChanged: (val){
                                setState(() {
                                  id = 0;
                                  radioButtonItem = 'one';
                                });
                              }),
                              title: Text("Amazon UPI",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                            ),
                            shape(),
                            ListTile(
                              leading: Icon(FontAwesomeIcons.rupeeSign,color: Colors.purpleAccent,),
                              trailing: Radio<int>(value: 1, groupValue: id,activeColor: Colors.red, onChanged: (val){
                                setState(() {
                                  id = 1;
                                  radioButtonItem = 'Two';
                                });
                              }),
                              title: Text("Phonepe",style: TextStyle(fontWeight: FontWeight.w500),),
                            ),
                          ],
                        ),
                      ),
                    ),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 60.0,top: 10),
                      child: Text('Wallets',style: TextStyle(fontSize: 15),),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Neumorphic(
                    margin: EdgeInsets.all(15),
                    style: NeumorphicStyle(
                     shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black ,
                        shadowDarkColor: Colors.black),
                    child:   Column(
                        children: [
                          ListTile(
                            leading: Icon(FontAwesomeIcons.applePay,color: Colors.red,),
                            trailing: Radio<int>(value: 2, groupValue: id, activeColor: Colors.red, onChanged: (val){
                              setState(() {
                                id = 2;
                                radioButtonItem = 'three';
                              });
                            }),
                            title: Text("Paytm",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                          ),
                          shape(),
                          ListTile(
                            leading: Icon(FontAwesomeIcons.amazon,color: Colors.black,),
                            trailing: Radio<int>(value: 3, groupValue: id,activeColor: Colors.red, onChanged: (val){
                              setState(() {
                                id = 3;
                                radioButtonItem = 'Four';
                              });
                            }),
                            title: Text("Amazon UPI ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                          ),
                          shape(),
                          ListTile(
                            leading: Icon(FontAwesomeIcons.rupeeSign,color: Colors.purpleAccent,),
                            trailing: Radio<int>(value: 4, groupValue: id,activeColor: Colors.red, onChanged: (val){
                              setState(() {
                                id = 4;
                                radioButtonItem = 'Five';
                              });
                            }),
                            title: Text("Phonepe",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                          ),
                        ],
                      ),
                    ),
                  ),

                Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Neumorphic(
                    margin: EdgeInsets.all(15),
                    style: NeumorphicStyle(
                   shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: Text('Pay later',style: TextStyle(
                                color: Colors.black,fontWeight: FontWeight.w500,fontSize: 15
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Radio(value: 5,hoverColor: Colors.red, activeColor: Colors.red, groupValue: id, onChanged: (val){
                              setState(() {
                                id = 5;
                                radioButtonItem = 'Six';
                              });
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),

                Center(
                  child:  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Card(
                      elevation: 20,
                        shadowColor: Color(0xfff93527),
                        child: SizedBox(
                          width: 140,
                          height: 40,
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment_Unseccussfull_Screen()));
                            },style: ElevatedButton.styleFrom(shadowColor: Color(0xfff93527),primary: Colors.red),child: Text('Proceed'),
                          ),
                        ),
                      ),
                  ),
                  ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}

