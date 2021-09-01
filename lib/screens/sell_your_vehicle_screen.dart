import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/screens/navigator_helper.dart';

import '../config.dart';
import '../widgets.dart';

class SellYourVehicleScreen extends StatefulWidget {
  @override
  _SellYourVehicleScreenState createState() => _SellYourVehicleScreenState();
}

class _SellYourVehicleScreenState extends State<SellYourVehicleScreen> {

  int fuelTypeChoice = 0;

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
          screenTitleSellYourVehicle,
          style: TextStyle(
            fontFamily: textFontFamily,
            fontSize: 18,
            color: const Color(0xff000000),
          ),
          textAlign: TextAlign.left,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all(16),
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              /// Bike Brand Custom Drop Down Menu
              CustomDropDownMenu(
                customDropDownValue: dropDownMenuBrand,
                bikeDetailsData: brandListDropDownMenu,
              ),


              /// Bike Model Custom Drop Down Menu
              SizedBox(
                child: CustomDropDownMenu(
                  customDropDownValue: dropDownMenuModel,
                  bikeDetailsData: modelListDropDownMenu,
                ),
              ),


              /// Bike Year Custom Drop Down Menu
              SizedBox(
                child: CustomDropDownMenu(
                  customDropDownValue: dropDownMenuYear,
                  bikeDetailsData: bikeManufacturingYearsDropDownMenu,
                ),
              ),


              /// Bike Color Custom Drop Down Menu
              SizedBox(
                child: CustomDropDownMenu(
                  customDropDownValue: dropDownMenuColor,
                  bikeDetailsData: bikeColorsDropDownMenu,
                ),
              ),

              ///text Field Vehicle Number
              CustomTextField(
                text: textFieldVehicleNumber,
              ),

              ///text Field Kilometer Driven
              CustomTextField(
                text: textFieldKilometerDriven,
              ),

              ///text Field Enter Your Phone Number
              CustomTextField(
                text: textFieldEnterYourPhoneNumber,
              ),

              /// Term & Conditions
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text.rich(

                  TextSpan(
                    style: TextStyle(
                      fontFamily: textFontFamily,
                      fontSize: 12,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: TermsAndConditionsDescriptionText,
                      ),
                      TextSpan(
                        text: buttonNameTermAndCondition,
                        style: TextStyle(
                          color: buttonColor,
                          fontWeight: FontWeight.w500,
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = () { gotoScreen(context: context, screen: SellYourVehicleScreen());
                          },
                      ),
                    ],
                  ),
                  textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                ),
              ),


              ///Button Proceed
              SizedBox(
                width: 150.0,
                height: 70.0,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                  child: SmallRoundedCornerButton(
                      color:true,
                    onPressed: () {
                      gotoScreen(context: context, screen: SellYourVehicleScreen());
                    },
                    child: buttonNameValueMyBike,
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
