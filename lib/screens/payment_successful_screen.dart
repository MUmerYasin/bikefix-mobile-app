import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/config.dart';
import 'package:two_wheel_vehicle/screens/navigator_helper.dart';
import 'package:two_wheel_vehicle/widgets.dart';

class PaymentSuccessfulScreen extends StatefulWidget {
  const PaymentSuccessfulScreen({Key? key}) : super(key: key);

  @override
  _PaymentSuccessfulScreenState createState() =>
      _PaymentSuccessfulScreenState();
}

class _PaymentSuccessfulScreenState extends State<PaymentSuccessfulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicColors.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: NeumorphicColors.background,
        title: Text(''),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              /// Payment Unsuccessful Image and Text
              Padding(
                padding: const EdgeInsets.only(top: 48.0),
                child: Neumorphic(
                  style: NeumorphicStyle(
                    depth: 8,
                    shape: NeumorphicShape.flat,
                    shadowDarkColorEmboss: Colors.black.withOpacity(0.7),
                    // boxShape: NeumorphicBoxShape.circle(),
                    shadowDarkColor: Colors.black.withOpacity(0.7),
                    shadowLightColor: Colors.white,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    height: 200,
                    child: Center(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0,),
                                child: Image.asset(paymentSuccessfulImagePath, height:120.0,fit:BoxFit.cover ,),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Text(paymentConfirmedText, style: TextStyle(
                                  fontFamily: textFontFamily,
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // RoundedCornerButton(
              //     child: buttonNameTryAgain,
              // ),

              ///Button Try Again
              Padding(
                padding: const EdgeInsets.only(top: 30.0, ),
                child: RoundedCornerButton(
                  onPressed: () {
                    gotoScreen(context: context, screen: PaymentSuccessfulScreen());
                  },
                  child: buttonNameTryAgain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
