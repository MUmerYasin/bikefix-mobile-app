import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/config.dart';
// import 'package:two_wheel_vehicle/screens/navigator_helper.dart';
import 'package:two_wheel_vehicle/widgets.dart';

class GeneralServiceScreen extends StatefulWidget {
  const GeneralServiceScreen({Key? key}) : super(key: key);

  @override
  _GeneralServiceScreenState createState() => _GeneralServiceScreenState();
}

class _GeneralServiceScreenState extends State<GeneralServiceScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicColors.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: NeumorphicColors.background,
        title: Text(
          screenTitleGeneralService,
          style: TextStyle(color: Colors.black),
        ),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.black,
            ),),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [


                /// Custom Class for Design Check List in Different class
                ///General Service
                InspectionCheckListMenu(
                  iconImagePath: generalServiceHomePageIcon,
                  titleOfCheckListMenu: paymentConfirmedText,
                  questionOfCheckListMenu: questionMenuTextWhatServices,
                  listDataOfCheckListMenu: generalServiceListData,
                  instructionOfCheckListMenu: instructionForMenuTextOtherAdditionalProblems,
                  priceOfCheckListMenu: priceInIndianCurrency,
                  inspectionChargeCheckListMenu: instructionForMenuTextInspectionCharge,
                ),

                /// Special Request
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: InspectionCheckListMenu(
                    iconImagePath: specialRequestIconCustomMenuImagePath,
                    titleOfCheckListMenu: titleMenuTextSpecialRequest,
                    questionOfCheckListMenu: questionMenuTextWhatServices,
                    listDataOfCheckListMenu: specialRequestListData,
                    instructionOfCheckListMenu: instructionForMenuTextOtherAdditionalProblems,
                    priceOfCheckListMenu: priceInIndianCurrency,
                    inspectionChargeCheckListMenu: instructionForMenuTextInspectionCharge,
                  ),
                ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 25.0),
//                   child: Neumorphic(
//                     style: NeumorphicStyle(
//                       depth: 8,
//                       shape: NeumorphicShape.flat,
//                       shadowDarkColorEmboss: Colors.black.withOpacity(0.7),
//                       shadowDarkColor: Colors.black.withOpacity(0.7),
//                       shadowLightColor: Colors.white,
//                     ),
//                     child: Container(
//                       width: MediaQuery.of(context).size.width * 0.9,
//                       // height: 200,
//                       child: Padding(
//                         padding: const EdgeInsets.all(16.0),
//                         child: Column(
//                           children: [
//                             ///  Image and Text, Icon and Title
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Image.asset(
//                                   generalServiceHomePageIcon,
//                                   width: 30.0,
//                                   height: 30.0,
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 12.0),
//                                   child: Text(
//                                     paymentConfirmedText,
//                                     style: TextStyle(
//                                       fontFamily: textFontFamily,
//                                       fontSize: 16,
//                                       color: Colors.black,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//
//                             ///Divider Custom
//                             Padding(
//                               padding:
//                                   const EdgeInsets.only(top: 8.0, bottom: 8.0),
//                               child: DividerCustom(),
//                             ),
//
//                             ///Text, Questions
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.only(
//                                     left: 12.0,
//                                     bottom: 4.0,
//                                   ),
//                                   child: Text(
//                                     questionMenuTextWhatServices,
//                                     style: TextStyle(
//                                       fontFamily: textFontFamily,
//                                       fontSize: 14,
//                                       color: Colors.black,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//
//                             ///Text, Check List to be complete
//                             SizedBox(
//                               // height: 200,
//
//                               // child: Column(
//                               //   mainAxisAlignment: MainAxisAlignment.start,
//                               //   crossAxisAlignment: CrossAxisAlignment.start,
//                               //   children: [
//
//                               // Neumorphic(
//                               //   style: NeumorphicStyle(
//                               //       boxShape: NeumorphicBoxShape.roundRect(
//                               //           BorderRadius.circular(50)),
//                               //       shadowLightColorEmboss: Colors.white,
//                               //       shadowDarkColorEmboss: buttonColor,
//                               //       shadowDarkColor: buttonColor,
//                               //     color: buttonColor,
//                               //   ),
//                               //   child: Icon(
//                               //     Icons.circle,
//                               //     color: buttonColor,
//                               //     size: 9.0,
//                               //     // color: Color(0xffEEF0F5),
//                               //   ),
//                               // ),
// ///////////////////////////////////////////////////////////////////////////////////
//                               // Padding(
//                               //   padding: const EdgeInsets.only(left: 12.0,),
//                               //
//                               //   child: Text(
//                               //     CheckListMenuTextEngineOil,
//                               //     style: TextStyle(
//                               //       fontFamily: textFontFamily,
//                               //       fontSize: 13,
//                               //       color: Colors.black,
//                               //       // fontWeight: FontWeight.bold,
//                               //     ),
//                               //
//                               //   ),
//                               // ),
//
//                               child: ListView(
//                                 padding: EdgeInsets.only(
//                                   top: 0.0,
//                                   left: 16.0,
//                                   bottom: 0.0,
//                                 ),
//                                 // scrollDirection : Axis.vertical,
//                                 shrinkWrap: true,
//                                 physics: ClampingScrollPhysics(),
//                                 children: data
//                                     .map(
//                                       (element) => SizedBox(
//                                         height: 20.0,
//                                         child: ListTile(
//                                           leading: Neumorphic(
//                                             style: NeumorphicStyle(
//                                               boxShape:
//                                                   NeumorphicBoxShape.roundRect(
//                                                       BorderRadius.circular(
//                                                           50)),
//                                               shadowLightColorEmboss:
//                                                   Colors.white,
//                                               shadowDarkColorEmboss:
//                                                   buttonColor,
//                                               shadowDarkColor: buttonColor,
//                                               color: buttonColor,
//                                             ),
//                                             child: Icon(
//                                               Icons.circle,
//                                               color: buttonColor,
//                                               size: 9.0,
//                                               // color: Color(0xffEEF0F5),
//                                             ),
//                                           ),
//                                           title: Text(
//                                             element,
//                                             style: TextStyle(
//                                               fontFamily: textFontFamily,
//                                               fontSize: 13,
//                                               color: Colors.black,
//                                               // fontWeight: FontWeight.bold,
//                                             ),
//                                           ),
//                                           dense: true,
//                                           minVerticalPadding: 0.0,
//                                           horizontalTitleGap: 0.0,
//                                           contentPadding: EdgeInsets.all(0.0),
//                                         ),
//                                       ),
//                                     )
//                                     .toList(),
//                               ),
//
//                               //   ],
//                               // ),
//                             ),
//
//                             ///Text, other additional problems, //Any other additional problems will be reported post vehicle inspection
//                             Padding(
//                               padding: const EdgeInsets.only(
//                                   top: 16.0, bottom: 16.0),
//                               child: Text(
//                                 instructionForMenuTextOtherAdditionalProblems,
//                                 style: TextStyle(
//                                   fontFamily: textFontFamily,
//                                   fontSize: 12,
//                                   color: Color(0xffDCBC15),
//                                 ),
//                                 textAlign: TextAlign.left,
//                                 // overflow: TextOverflow.ellipsis,
//                                 softWrap: true,
//                               ),
//                             ),
//
//                             ///Divider Custom
//                             Padding(
//                               padding:
//                                   const EdgeInsets.only(top: 0.0, bottom: 8.0),
//                               child: DividerCustom(),
//                             ),
//
//                             ///Price, Text  (Inspection Charge), Button Add
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 ///Price For Inspection charge
//                                 Text(
//                                   priceInIndianCurrency,
//                                   style: TextStyle(
//                                     fontFamily: textFontFamily,
//                                     fontSize: 18,
//                                     color: buttonColor,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//
//                                 ///Text  (Inspection Charge)
//                                 Text(
//                                   instructionForMenuTextInspectionCharge,
//                                   style: TextStyle(
//                                     fontFamily: textFontFamily,
//                                     fontSize: 16,
//                                     color: Colors.black,
//                                     // fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//
//                                 ///Button Add
//                                 // RoundedCornerButton(
//                                 //   onPressed: () {
//                                 //     gotoScreen(
//                                 //         context: context, screen: GeneralServiceScreen());
//                                 //   },
//                                 //   child: buttonNameAdd,
//                                 // ),
//
//                                 SizedBox(
//                                   height: 40,
//                                   child: Neumorphic(
//                                     style: NeumorphicStyle(
//                                         depth: 8,
//                                         shape: NeumorphicShape.flat,
//                                         shadowDarkColor: Colors.red,
//                                         shadowLightColor: Colors.white,
//                                         shadowDarkColorEmboss:
//                                             Colors.black.withOpacity(0.8)
//
//                                         //  boxShape: NeumorphicBoxShape.circle(),
//                                         ),
//                                     child: ElevatedButton(
//                                         style: ElevatedButton.styleFrom(
//                                             primary: buttonColor,
//                                             textStyle: TextStyle(
//                                               fontFamily: textFontFamily,
//                                               fontSize: 18,
//                                               color: const Color(0xffffffff),
//                                               fontWeight: FontWeight.w500,
//                                             )),
//                                         onPressed: () {
//                                           gotoScreen(
//                                               context: context,
//                                               screen: GeneralServiceScreen());
//                                         },
//                                         child:
//                                             Center(child: Text(buttonNameAdd))),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),

                // RoundedCornerButton(
                //     child: buttonNameTryAgain,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
