import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/config.dart';
import 'package:two_wheel_vehicle/screens/navigator_helper.dart';
import 'package:two_wheel_vehicle/screens/payment_successful_screen.dart';
import 'package:two_wheel_vehicle/widgets.dart';

class PaymentUnsuccessfulScreen extends StatefulWidget {
  const PaymentUnsuccessfulScreen({Key? key}) : super(key: key);

  @override
  _PaymentUnsuccessfulScreenState createState() =>
      _PaymentUnsuccessfulScreenState();
}

class _PaymentUnsuccessfulScreenState extends State<PaymentUnsuccessfulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ScreenBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: NeumorphicColors.background,
        title: Text(''),
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Row(
            children: [
              BackButtonOnAppBar(),
            ],
          ),
        ),
        centerTitle: true,
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
                                child: Image.asset(paymentUnsuccessfulImagePath, height:120.0,fit:BoxFit.cover ,),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Text(paymentUnsuccessfulText, style: TextStyle(
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
