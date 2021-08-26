import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/screens/login_screen.dart';
import 'package:two_wheel_vehicle/screens/navigator_helper.dart';
import 'package:two_wheel_vehicle/widgets.dart';

import '../config.dart';

class CheckoutStatusScreen extends StatefulWidget {
  @override
  _CheckoutStatusScreenState createState() => _CheckoutStatusScreenState();
}

class _CheckoutStatusScreenState extends State<CheckoutStatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: backgroundColor,
        // leading: Image.asset('assets/icons/back_icon.png',fit: BoxFit.fill,),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          screenTitleCheckout,
          style: TextStyle(
            fontFamily: textFontFamily,
            fontSize: 18,
            color: Colors.black,
          ),
          textAlign: TextAlign.left,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.only(top: 0.0, bottom: 10,left: 15.0, right: 15.0,),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              ///Title Vehicle Details
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    vehicleDetailsText,
                    style: TextStyle(
                      fontFamily: textFontFamily,
                      fontSize: 14,
                      color: const Color(0xff575656),
                      height: 1,
                    ),
                    textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),

              /// Show Bike Details, Name, Details, bike Image
              BikeTitleDetailsHeading(
                  currentBikeName: companyNameKTM,
                  currentBikeDetails: bikeDetailsHundredDuke,
                  bikeImages: bikeImageImagePath),
              // Padding(
              //   padding: const EdgeInsets.only(top: 8.0, bottom: 10),
              //   child: Neumorphic(
              //     style: NeumorphicStyle(
              //         // shadowLightColorEmboss: Colors.white,
              //         // shadowDarkColorEmboss: Colors.black,
              //         // shadowDarkColor: Colors.black,
              //       shadowDarkColor: Colors.black.withOpacity(0.6),
              //       depth: 7,
              //       shape: NeumorphicShape.flat,
              //       // shadowDarkColor: Colors.black12,
              //       shadowLightColor: Colors.white,
              //       shadowDarkColorEmboss: Colors.black.withOpacity(0.8),
              //     ),
              //     child: Container(
              //       padding: EdgeInsets.all(15),
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(5.0),
              //         gradient: LinearGradient(
              //           begin: Alignment(-1.0, -1.0),
              //           end: Alignment(1.01, 1.0),
              //           colors: [
              //             const Color(0xffeef0f5),
              //             const Color(0xffe6e9ef)
              //           ],
              //           stops: [0.0, 1.0],
              //         ),
              //         boxShadow: [
              //           BoxShadow(
              //             color: const Color(0xb2a6b4c8),
              //             offset: Offset(10, 10),
              //             blurRadius: 48,
              //           ),
              //         ],
              //       ),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           ///Bike Name, Details,
              //           Text.rich(
              //             TextSpan(
              //               style: TextStyle(
              //                 fontFamily: textFontFamily,
              //                 fontSize: 18,
              //                 color: const Color(0xff000000),
              //               ),
              //               children: [
              //                 /// Bike Name
              //                 TextSpan(
              //                   text: companyNameKTM + '\n',
              //                 ),
              //                 TextSpan(
              //                   /// Bike Details
              //                   text: bikeDetailsHundredDuke,
              //                   style: TextStyle(
              //                     color: buttonColor,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             textHeightBehavior:
              //                 TextHeightBehavior(applyHeightToFirstAscent: false),
              //             textAlign: TextAlign.center,
              //           ),
              //           ///Bike Image
              //           Image.asset(bikeImageImagePath),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),

              ///Title Price Breakup
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    PriceBreakUpText,
                    style: TextStyle(
                      fontFamily: textFontFamily,
                      fontSize: 14,
                      color: const Color(0xff575656),
                      height: 1,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),

              ///Checkout Details, {Service Cost, Additional Charges*, Discount Applied, Sub Total, GST ? Tax, Total}
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                child: Neumorphic(
                  style: NeumorphicStyle(
                    // shadowLightColorEmboss: Colors.white,
                    // shadowDarkColorEmboss: Colors.black,
                    // shadowDarkColor: Colors.black,
                    //
                    shadowDarkColor: Colors.black.withOpacity(0.6),
                    depth: 8,
                    shape: NeumorphicShape.flat,
                    // shadowDarkColor: Colors.black12,
                    shadowLightColor: Colors.white,
                    shadowDarkColorEmboss: Colors.black.withOpacity(0.8),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    // height: 160,
                    padding:
                        EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      gradient: LinearGradient(
                        begin: Alignment(-1.0, -1.0),
                        end: Alignment(1.01, 1.0),
                        colors: [
                          const Color(0xffeef0f5),
                          const Color(0xffe6e9ef)
                        ],
                        stops: [0.0, 1.0],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xb2a6b4c8),
                          offset: Offset(10, 10),
                          blurRadius: 48,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 8.0,bottom: 10),
                        //   child: Container(
                        //     height: 5,
                        //     decoration: BoxDecoration(
                        //       color: const Color(0xffffffff),
                        //     ),
                        //   ),
                        // ),
                        CheckoutOrderDetailsProcess(
                            checkoutDetails: serviceCostText,
                            checkoutPrice: priceInIndianCurrency,
                        color: true,),
                        CheckoutOrderDetailsProcess(
                            checkoutDetails: additionalChargesText,
                            checkoutPrice: priceInIndianCurrency,
                          color: true,),
                        CheckoutOrderDetailsProcess(
                            checkoutDetails: discountAppliedText,
                            checkoutPrice: priceInIndianCurrency,
                          color: true,),

                        DividerCustom(),

                        CheckoutOrderDetailsProcess(
                            checkoutDetails: subTotalText,
                            checkoutPrice: priceInIndianCurrency,
                          color: true,),
                        CheckoutOrderDetailsProcess(
                            checkoutDetails: gSTTaxText,
                            checkoutPrice: priceInIndianCurrency,
                          color: true,),
                        CheckoutOrderDetailsProcess(
                            checkoutDetails: totalText,
                            checkoutPrice: priceInIndianCurrency,
                          color: true,),


                      ],
                    ),
                  ),
                ),
              ),

              ///Total Saving (Including Cashback)
              Container(
                width: MediaQuery.of(context).size.width,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0,),
                      child: CheckoutOrderDetailsProcess(
                        checkoutDetails: totalSavingText,
                        checkoutPrice: priceInIndianCurrency,
                        color: false,),
                    ),

                  ],
                ),
              ),

              DividerCustom(),

              ///drop Down Menu Apply Coupon Code Text
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      applyCouponCodeText,
                      style: TextStyle(
                        fontFamily: textFontFamily,
                        fontSize: 13,
                        color: const Color(0xff000000),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),

              ///Pay Now, Pay Later, Button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: SmallRoundedCornerButton(
                        color: true,
                        onPressed: () {
                          gotoScreen(context: context, screen: LoginScreen());
                        },
                        child: buttonNamePayNow,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: SmallRoundedCornerButton(
                        color: false,
                        onPressed: () {
                          gotoScreen(context: context, screen: LoginScreen());
                        },
                        child: buttonNamePayLater,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


///Order Details, Booking, Pickup and Delivery Date and Time
class CheckoutOrderDetailsProcess extends StatefulWidget {

  final String checkoutDetails;
  final String checkoutPrice;
  final bool color;

   CheckoutOrderDetailsProcess(
      {Key? key, required this.checkoutDetails, required this.checkoutPrice, required this.color})
      : super(key: key);

  @override
  _CheckoutOrderDetailsProcessState createState() =>
      _CheckoutOrderDetailsProcessState();
}

class _CheckoutOrderDetailsProcessState extends State<CheckoutOrderDetailsProcess> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8.0, bottom: 4.0,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                ///Checkout Details
                widget.checkoutDetails,
                style: TextStyle(
                  fontFamily: textFontFamily,
                  fontSize: 12,
                  color: widget.color ? const Color(0xff686868) : Colors.green,

                  height: 1,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.left,
              ),

              Text(
                ///Checkout Price
                widget.checkoutPrice,
                style: TextStyle(
                  fontFamily: textFontFamily,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff000000),
                  height: 1,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ],
    );
  }
}


