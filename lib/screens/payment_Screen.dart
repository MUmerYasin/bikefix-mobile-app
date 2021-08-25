import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/config.dart';

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
                    height: 230,
                    child: Center(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(paymentUnsuccessfulImagePath),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Payment Unsuccessful", ),
                            ],
                          ),
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
