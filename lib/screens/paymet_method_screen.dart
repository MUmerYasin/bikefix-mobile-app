import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:two_wheel_vehicle/config.dart';
import 'package:two_wheel_vehicle/screens/payment_Screen.dart';
import 'package:two_wheel_vehicle/widgets.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  _PaymentMethodScreenState createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  String radioButton = '';
  int id = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicColors.background,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        title: Text(
          screenTitlePaymentMethod,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: NeumorphicColors.background,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        // physics: NeverScrollableScrollPhysics(),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                /// Credit / Debit Card Radio Button
                Padding(
                  padding: const EdgeInsets.fromLTRB(22.0, 38.0, 22.0, 0.0),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      shadowLightColorEmboss: Colors.white,
                      shadowDarkColorEmboss: Colors.grey,
                      shadowDarkColor: Colors.black87,
                      shape: NeumorphicShape.flat,
                      depth: 9,
                    ),
                    child: Container(
                      width: 300,
                      height: 50,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              creditDebitCardText,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 90.0),
                            child: Radio<int>(
                                value: 1,
                                groupValue: null,
                                onChanged: (val) {
                                  setState(() {});
                                }),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                /// UPI Text
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 60.0, top: 10),
                      child: Text(
                        UPIText,
                        style: TextStyle(fontSize: 16),
                      ),
                    )
                  ],
                ),

                ///Amazon UPI Radio Button + Divider + PhonePe Radio Button
                Padding(
                  padding: const EdgeInsets.fromLTRB(22.0, 10.0, 22.0, 0.0),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      shadowLightColorEmboss: Colors.white,
                      shadowDarkColorEmboss: Colors.grey,
                      shadowDarkColor: Colors.black87,
                      shape: NeumorphicShape.flat,
                      depth: 9,
                    ),
                    child: Container(
                      width: 300,
                      height: 120,
                      child: Column(
                        children: [
                          /// Amazon UPI Radio Button
                          ListTile(
                            horizontalTitleGap: 0.0,
                            contentPadding: EdgeInsets.fromLTRB(25, 0, 5.0, 0),
                            leading: Icon(
                              FontAwesomeIcons.amazon,
                              color: Colors.black,
                            ),
                            trailing: Radio<int>(
                                value: 1,
                                groupValue: null,
                                onChanged: (val) {
                                  setState(() {
                                    id = 1;
                                    radioButton = '';
                                  });
                                }),
                            title: Text(
                              AmazonUPIText,
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),

                          ///Divider
                          // Neumorphic(
                          //   style: NeumorphicStyle(
                          //       // shadowLightColorEmboss: Colors.white,
                          //       // shadowDarkColorEmboss: Colors.black,
                          //       // shadowDarkColor: Colors.black,
                          //
                          //     shadowLightColorEmboss: Colors.white,
                          //     shadowDarkColorEmboss: Colors.black,
                          //     shadowDarkColor: Colors.black54,
                          //     shape: NeumorphicShape.flat,
                          //     depth: -1,
                          //
                          //   ),
                          //   child: Container(
                          //     width: 240,
                          //     height: 4,
                          //     color: Colors.white,
                          //   ),
                          // ),

                          DividerCustom(),

                          ///PhonePe Radio Button
                          ListTile(
                            horizontalTitleGap: 0.0,
                            contentPadding: EdgeInsets.fromLTRB(25, 0, 5.0, 0),
                            leading: ImageIcon(
                              AssetImage(phonePeLogoImagePath),
                              color: Colors.deepPurple,
                            ),

                            trailing: Radio<int>(
                                value: 1,
                                groupValue: null,
                                onChanged: (val) {
                                  setState(() {
                                    id = 1;
                                    radioButton = '';
                                  });
                                }),
                            title: Text(
                              PhonePeText,
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                /// Wallets Text
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 60.0, top: 10),
                      child: Text(
                        WalletsText,
                        style: TextStyle(fontSize: 16),
                      ),
                    )
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(22.0, 10.0, 22.0, 0.0),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      shadowLightColorEmboss: Colors.white,
                      shadowDarkColorEmboss: Colors.grey,
                      shadowDarkColor: Colors.black87,
                      shape: NeumorphicShape.flat,
                      depth: 9,
                    ),
                    child: Container(
                      width: 300,
                      height: 180,
                      child: Column(
                        children: [
                          /// Paytm
                          ListTile(
                            horizontalTitleGap: 0.0,
                            contentPadding: EdgeInsets.fromLTRB(25, 0, 5.0, 0),
                            leading: Image(
                              image: AssetImage(paytmLogoImagePath),
                              // fit: BoxFit.fitWidth,
                              alignment: Alignment.bottomCenter,
                              // color: Colors.deepPurple,
                            ),
                            trailing: Radio<int>(
                                value: 1,
                                groupValue: null,
                                onChanged: (val) {
                                  setState(() {
                                    id = 1;
                                    radioButton = '';
                                  });
                                }),
                            title: Text(
                              PaytmText,
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),

                          // Neumorphic(
                          //   style: NeumorphicStyle(
                          //       shadowLightColorEmboss: Colors.white,
                          //       shadowDarkColorEmboss: Colors.black,
                          //       shadowDarkColor: Colors.black),
                          //   child: Container(
                          //     width: 220,
                          //     height: 3,
                          //     color: Colors.white,
                          //   ),
                          // ),
                          ///Divider
                          DividerCustom(),

                          ///Amazon UPI
                          ListTile(
                            horizontalTitleGap: 0.0,
                            contentPadding: EdgeInsets.fromLTRB(25, 0, 5.0, 0),
                            leading: Icon(
                              FontAwesomeIcons.amazon,
                              color: Colors.black,
                            ),
                            trailing: Radio<int>(
                                value: 1,
                                groupValue: null,
                                onChanged: (val) {
                                  setState(() {
                                    id = 1;
                                    radioButton = '';
                                  });
                                }),
                            title: Text(
                              AmazonUPIText,
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),

                          // Neumorphic(
                          //   style: NeumorphicStyle(
                          //       shadowLightColorEmboss: Colors.white,
                          //       shadowDarkColorEmboss: Colors.black,
                          //       shadowDarkColor: Colors.black),
                          //   child: Container(
                          //     width: 220,
                          //     height: 3,
                          //     color: Colors.white,
                          //   ),
                          // ),
                          ///Divider
                          DividerCustom(),

                          ///PhonePe
                          ListTile(
                            horizontalTitleGap: 0.0,
                            contentPadding: EdgeInsets.fromLTRB(25, 0, 5.0, 0),
                            leading: ImageIcon(
                              AssetImage(phonePeLogoImagePath),
                              color: Colors.deepPurple,
                            ),
                            // leading: Icon(FontAwesomeIcons.rupeeSign,color: Colors.purpleAccent,),
                            trailing: Radio<int>(
                                value: 1,
                                groupValue: null,
                                onChanged: (val) {
                                  setState(() {
                                    id = 1;
                                    radioButton = '';
                                  });
                                }),
                            title: Text(
                              PhonePeText,
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                /// Pay Later
                Padding(
                  padding: const EdgeInsets.fromLTRB(22.0, 28.0, 22.0, 0.0),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      shadowLightColorEmboss: Colors.white,
                      shadowDarkColorEmboss: Colors.grey,
                      shadowDarkColor: Colors.black87,
                      shape: NeumorphicShape.flat,
                      depth: 9,
                    ),
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: Text(
                              PayLaterText,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 147.0),
                            child: Radio(
                                value: 1,
                                hoverColor: Colors.red,
                                activeColor: Colors.red,
                                groupValue: id,
                                onChanged: (val) {
                                  setState(() {
                                    id = 1;
                                    radioButton = 'one';
                                  });
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                /// Proceed button
                // Center(
                //   child: Padding(
                //     padding: const EdgeInsets.only(top: 18.0),
                //     child: Card(
                //       elevation: 20,
                //       shadowColor: Color(0xfff93527),
                //       child: SizedBox(
                //         width: 140,
                //         height: 55,
                //         child: ElevatedButton(
                //           onPressed: () {
                //             Navigator.push(
                //                 context,
                //                 MaterialPageRoute(
                //                     builder: (context) =>
                //                         Payment_Unseccussfull_Screen()));
                //           },
                //           style: ElevatedButton.styleFrom(
                //               shadowColor: Color(0xfff93527),
                //               primary: Colors.red),
                //           child: Text(buttonNameProceed),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: SizedBox(
                    height: 50,
                    child: Neumorphic(
                      style: NeumorphicStyle(
                          depth: 6,
                          shape: NeumorphicShape.flat,
                          shadowDarkColor: Colors.red,
                          shadowLightColor: Colors.white,
                          shadowDarkColorEmboss: Colors.black.withOpacity(0.8)

                          //  boxShape: NeumorphicBoxShape.circle(),
                          ),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: buttonColor,
                              textStyle: TextStyle(
                                fontFamily: textFontFamily,
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              )),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        PaymentUnsuccessfulScreen()));
                          },
                          child: SizedBox(
                              width: 130,
                              child: Center(child: Text(buttonNameProceed)))),
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
