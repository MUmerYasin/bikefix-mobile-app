import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/config.dart';
import 'package:two_wheel_vehicle/screens/navigator_helper.dart';
import 'package:two_wheel_vehicle/widgets.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({Key? key}) : super(key: key);

  @override
  _SubscriptionScreenState createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
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
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(top: 8.0),
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
                    width: MediaQuery.of(context).size.width * 0.9,
                    // height: 200,
                    child: Center(
                      child: Column(
                        children: [
                          /// subscription Image and Text
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  subscriptionImagePath,
                                  height: 30.0,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  "  " + subscriptionText,
                                  style: TextStyle(
                                    fontFamily: textFontFamily,
                                    fontSize: 26,
                                    color: buttonColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          ///3 Pickup and drop free
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Text(
                                  subscriptionFeatureOneText,
                                  style: TextStyle(
                                    fontFamily: textFontFamily,
                                    // fontSize: 18,
                                    color: Colors.black,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          DividerCustom(),

                          ///10% discount (upto ₹200 on each invoice)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Text(
                                  subscriptionFeatureTwoText,
                                  style: TextStyle(
                                    fontFamily: textFontFamily,
                                    // fontSize: 18,
                                    color: Colors.black,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          DividerCustom(),

                          ///Free consultation
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Text(
                                  subscriptionFeatureThreeText,
                                  style: TextStyle(
                                    fontFamily: textFontFamily,
                                    // fontSize: 18,
                                    color: Colors.black,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          DividerCustom(),

                          ///7 Days after service warranty
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Text(
                                  subscriptionFeatureFourText,
                                  style: TextStyle(
                                    fontFamily: textFontFamily,
                                    // fontSize: 18,
                                    color: Colors.black,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          DividerCustom(),

                          ///Priority customer support
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Text(
                                  subscriptionFeatureFiveText,
                                  style: TextStyle(
                                    fontFamily: textFontFamily,
                                    // fontSize: 18,
                                    color: Colors.black,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          ///Price Button, and time ₹499 / 6 MONTH
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 72,
                                  child: Neumorphic(
                                    style: NeumorphicStyle(
                                        depth: 8,
                                        // shape: NeumorphicShape.flat,
                                        shadowDarkColor: Colors.red,
                                        shadowLightColor: Colors.white,
                                        shadowDarkColorEmboss: Colors.black.withOpacity(0.8),

                                        shape: NeumorphicShape.concave,
                                        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),

                                        lightSource: LightSource.topLeft,

                                      //  boxShape: NeumorphicBoxShape.circle(),
                                    ),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: buttonColor,
                                            textStyle: TextStyle(
                                              fontFamily: textFontFamily,
                                              fontSize: 18,
                                              color: const Color(0xffffffff),
                                              fontWeight: FontWeight.w500,
                                            )),
                                        onPressed: (){},
                                        child:
                                        SizedBox(
                                            // width: 100,
                                            child: Center(child: Text(priceInIndianCurrency)))),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:3.0,),
                                  child: Text(
                                    subscriptionTimeText,
                                    style: TextStyle(
                                      fontFamily: textFontFamily,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                        // letterSpacing: 1,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SmallRoundedCornerButton(
                                    onPressed: () {
                                      setState(
                                            () {
                                        },
                                      );
                                    },
                                    child: buttonNameBuyNow,
                                    color: false),
                              ],
                            ),
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

             // ///Button Try Again
              // Padding(
              //   padding: const EdgeInsets.only(
              //     top: 30.0,
              //   ),
              //   child: RoundedCornerButton(
              //     onPressed: () {
              //       gotoScreen(context: context, screen: SubscriptionScreen());
              //     },
              //     child: buttonNameTryAgain,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
