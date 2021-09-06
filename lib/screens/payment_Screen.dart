import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets.dart';
import 'Payment_Success.dart';

class Payment_Unseccussfull_Screen extends StatefulWidget {
  const Payment_Unseccussfull_Screen({Key? key}) : super(key: key);

  @override
  _Payment_Unseccussfull_ScreenState createState() => _Payment_Unseccussfull_ScreenState();
}

class _Payment_Unseccussfull_ScreenState extends State<Payment_Unseccussfull_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicColors.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: NeumorphicColors.background,
        title: Text(''),
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Row(
            children: [
              appsign()
            ],
          ),
        ),
      ),
      body: SafeArea(
       child: Center(
         child: Column(
           children: [
             Padding(
               padding: const EdgeInsets.only(top: 28.0),
               child: Neumorphic(
                 style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black,shadowLightColor: Colors.white),
                 child: Container(
                   color: NeumorphicColors.background,
                   width: 300,
                   height: 160,
                   child: Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(top: 8.0),
                         child: Image.asset('assets/icons/unse.png'),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 15.0),
                         child: Text("Payment Unsuccessful",style: GoogleFonts.roboto(fontSize: 19, fontWeight: FontWeight.w500),),
                       ),
                     ],
                   ),
                 ),
               ),
             ),
             Center(
               child:  Padding(
                 padding: const EdgeInsets.only(top: 45.0),
                 child: Card(
                   elevation: 20,
                   shadowColor: Color(0xfff93527),
                   child: SizedBox(
                     width: 140,
                     height: 55,
                     child: ElevatedButton(
                       onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment_Seccussfull_Screen()));
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

    );
  }
}
