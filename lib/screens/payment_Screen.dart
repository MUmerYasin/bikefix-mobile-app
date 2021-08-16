import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

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
        leading: GestureDetector( onTap: (){
          Navigator.pop(context);
        },
            child: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,)),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 48.0),
                child: Neumorphic(
                  style: NeumorphicStyle(shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: Colors.black , shadowDarkColor: Colors.black),
                  child:  Container(
                      width: 280,
                      height: 230,
                      child: Center(
                        child: Column(
                          children: [
                            

                          ],
                        ),
                      ),
                    ),
                  ),
              )


            ],
          ),
        ),
      ),

    );
  }
}
