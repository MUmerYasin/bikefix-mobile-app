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

  String Radiobutton = '';
  int id = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicColors.background,
      appBar: AppBar(
        elevation: 0,
        title: Text('Payment Method',style: TextStyle(color: Colors.black),),
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
                Padding(
                  padding: const EdgeInsets.only(top: 38.0),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black
                    ),
                      child: Container(
                        width: 300,
                        height: 50,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 28.0),
                              child: Text('Credit/ Debit Card',style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.w500
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 115.0),
                              child: Radio<int>(value: 1, groupValue: null, onChanged: (val){
                                setState(() {

                                });
                              }),
                            )
                          ],
                        ),
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
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black),

                    child: Container(
                      width: 300,
                      height: 115,
                      child:  Column(
                          children: [
                            ListTile(
                              leading: Icon(FontAwesomeIcons.amazon,color: Colors.black,),
                              trailing: Radio<int>(value: 1, groupValue: null, onChanged: (val){
                                setState(() {
                                  id = 1;
                                  Radiobutton = '';
                                });
                              }),
                              title: Text("Amazon UPI",style: TextStyle(fontWeight: FontWeight.w500),),
                            ),
                            Neumorphic(
                              style: NeumorphicStyle(
                                  depth: NeumorphicTheme.embossDepth(context), shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,),
                              child: Container(
                                width: 240,
                                height: 3,
                                color: Colors.white,
                              ),
                            ),
                            ListTile(
                              leading: Icon(FontAwesomeIcons.rupeeSign,color: Colors.purpleAccent,),
                              trailing: Radio<int>(value: 1, groupValue: null, onChanged: (val){
                                setState(() {
                                  id = 1;
                                  Radiobutton = '';
                                });
                              }),
                              title: Text("Phonepe",style: TextStyle(fontWeight: FontWeight.w500),),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 60.0,top: 10),
                      child: Text('Wallets',style: TextStyle(fontSize: 16),),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                     shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black),
                    child: Container(
                      width: 300,
                      height: 175,
                      child:  Column(
                        children: [
                          ListTile(
                            leading: Icon(FontAwesomeIcons.applePay,color: Colors.red,),
                            trailing: Radio<int>(value: 1, groupValue: null, onChanged: (val){
                              setState(() {
                                id = 1;
                                Radiobutton = '';
                              });
                            }),
                            title: Text("Paytm",style: TextStyle(fontWeight: FontWeight.w500),),
                          ),
                          Neumorphic(
                            style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black),
                            child: Container(
                              width: 220,
                              height: 3,
                              color: Colors.white,
                            ),
                          ),
                          ListTile(
                            leading: Icon(FontAwesomeIcons.amazon,color: Colors.black,),
                            trailing: Radio<int>(value: 1, groupValue: null, onChanged: (val){
                              setState(() {
                                id = 1;
                                Radiobutton = '';
                              });
                            }),
                            title: Text("Amazon UPI ",style: TextStyle(fontWeight: FontWeight.w500),),
                          ),
                          Neumorphic(
                            style: NeumorphicStyle(
                                shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black),
                            child: Container(
                              width: 220,
                              height: 3,
                              color: Colors.white,
                            ),
                          ),
                          ListTile(
                            leading: Icon(FontAwesomeIcons.rupeeSign,color: Colors.purpleAccent,),
                            trailing: Radio<int>(value: 1, groupValue: null, onChanged: (val){
                              setState(() {
                                id = 1;
                                Radiobutton = '';
                              });
                            }),
                            title: Text("Phonepe",style: TextStyle(fontWeight: FontWeight.w500),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                   shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black),
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: Text('Pay later',style: TextStyle(
                                color: Colors.black,fontWeight: FontWeight.w500
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 155.0),
                            child: Radio(value: 1,hoverColor: Colors.red, activeColor: Colors.red, groupValue: id, onChanged: (val){
                              setState(() {
                                id = 1;
                                Radiobutton = 'one';
                              });
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child:  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Card(
                      elevation: 20,
                        shadowColor: Color(0xfff93527),
                        child: SizedBox(
                          width: 140,
                          height: 55,
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

