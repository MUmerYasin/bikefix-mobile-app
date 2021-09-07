import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/screens/home_screen.dart';
import 'package:two_wheel_vehicle/screens/navigator_helper.dart';

import '../config.dart';
import '../widgets.dart';

class BecomeAPartnerScreen extends StatefulWidget {
  @override
  _BecomeAPartnerScreenState createState() => _BecomeAPartnerScreenState();
}

class _BecomeAPartnerScreenState extends State<BecomeAPartnerScreen> {

  int fuelTypeChoice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ScreenBackgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ScreenBackgroundColor,
        // leading: Image.asset('assets/icons/back_icon.png',fit: BoxFit.fill,),
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Row(
            children: [
              BackButtonOnAppBar(),
            ],
          ),
        ),
        title: Text(
          screenTitleBecomeAPartner,
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

              /// text Field Name Time Frame For Buying A Franchise
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 4.0,bottom: 4.0,left: 8.0,),
                  child: Text(
                    textFieldNameTimeFrameForBuyingAFranchise,
                    style: TextStyle(
                      fontFamily: textFontFamily,
                      fontSize: 14,
                      color: const Color(0xff000000),
                      height: 1,
                        fontWeight: FontWeight.bold,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),

              /// Time Frame For Buying A Franchise List Drop Down Menu
              CustomDropDownMenu(
                customDropDownValue: dropDownMenuSelect,
                bikeDetailsData: timeFrameForBuyingAFranchiseListDropDownMenu,
              ),

              /// text Field Name Budget For Starting A Franchise
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 4.0,bottom: 4.0,left: 8.0,),
                  child: Text(
                    textFieldNameBudgetForStartingAFranchise,
                    style: TextStyle(
                      fontFamily: textFontFamily,
                      fontSize: 14,
                      color: const Color(0xff000000),
                      height: 1,
                      fontWeight: FontWeight.bold,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),

              ///Budget For Starting A Franchise Custom Drop Down Menu
              CustomDropDownMenu(
                customDropDownValue: dropDownMenuSelectBudget,
                bikeDetailsData: budgetForStartingAFranchiseListDropDownMenu,
              ),

              /// text Field Name Location To Launch A Bike Fix Up
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 4.0,bottom: 4.0,left: 8.0,),
                  child: Text(
                    textFieldNameLocationToLaunchABikeFixUp,
                    style: TextStyle(
                      fontFamily: textFontFamily,
                      fontSize: 14,
                      color: const Color(0xff000000),
                      height: 1,
                      fontWeight: FontWeight.bold,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),

              ///  Location To Launch A Bike fix up Custom Drop Down Menu
              CustomDropDownMenu(
                customDropDownValue: dropDownMenuSelectLocation,
                bikeDetailsData: locationToLaunchABikeFixUpCityNameListDropDownMenu,
              ),

              /// text Field Name Are Or Have You Been A Motor bike Mechanic
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 4.0,bottom: 4.0,left: 8.0,),
                  child: Text(
                    textFieldNameAreOrHaveYouBeenAMotorbikeMechanic,
                    style: TextStyle(
                      fontFamily: textFontFamily,
                      fontSize: 14,
                      color: const Color(0xff000000),
                      height: 1,
                      fontWeight: FontWeight.bold,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),

              /// Are Or Have You Been A Motor bike Mechanic Custom Drop Down Menu
              SizedBox(
                child: CustomDropDownMenu(
                  customDropDownValue: dropDownMenuSelect,
                  bikeDetailsData: motorbikeMechanicListDropDownMenu,
                ),
              ),



              /// text Field Name How Did You Here About Us
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 4.0,bottom: 4.0,left: 8.0,),
                  child: Text(
                    textFieldNameHowDidYouHereAboutUs,
                    style: TextStyle(
                      fontFamily: textFontFamily,
                      fontSize: 14,
                      color: const Color(0xff000000),
                      height: 1,
                      fontWeight: FontWeight.bold,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),

              /// How Did You Here About Us Custom Drop Down Menu
              CustomDropDownMenu(
                customDropDownValue: dropDownMenuSelect,
                bikeDetailsData: howDidYouHereAboutUsListDropDownMenu,
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
                      gotoScreen(context: context, screen: HomeScreen());
                    },
                    child: buttonNameSubmit,
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
