import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/config.dart';
import 'package:two_wheel_vehicle/widgets.dart';

class BodyWorkScreen extends StatefulWidget {
  const BodyWorkScreen({Key? key}) : super(key: key);

  @override
  _BodyWorkScreenState createState() => _BodyWorkScreenState();
}

class _BodyWorkScreenState extends State<BodyWorkScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ScreenBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ScreenBackgroundColor,
        title: Text(
          screenTitleBodyWork,
          style: TextStyle(color: Colors.black),
        ),
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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [

                /// Custom Class for Design Check List in Different class
                ///Center Stand Replacement
                InspectionCheckListMenu(
                  iconImagePath: centerStandReplacementIconCustomMenuImagePath,
                  titleOfCheckListMenu: titleMenuTextCenterStandReplacement,
                  questionOfCheckListMenu: questionMenuTextWhenDoWe,
                  listDataOfCheckListMenu: centerStandReplacementListData,
                  instructionOfCheckListMenu: instructionForMenuTextOtherAdditionalProblems,
                  priceOfCheckListMenu: priceInIndianCurrency,
                  inspectionChargeCheckListMenu: instructionForMenuTextInspectionCharge,
                ),

                ///Side Stand Replacement
                InspectionCheckListMenu(
                  iconImagePath: sideStandReplacementIconCustomMenuImagePath,
                  titleOfCheckListMenu: titleMenuTextSideStandReplacement,
                  questionOfCheckListMenu: questionMenuTextWhenDoWe,
                  listDataOfCheckListMenu: sideStandReplacementListData,
                  instructionOfCheckListMenu: instructionForMenuTextOtherAdditionalProblems,
                  priceOfCheckListMenu: priceInIndianCurrency,
                  inspectionChargeCheckListMenu: instructionForMenuTextInspectionCharge,
                ),

                /// Handle Bar Replacement
                InspectionCheckListMenu(
                  iconImagePath: handleBarReplacementIconCustomMenuImagePath,
                  titleOfCheckListMenu: titleMenuTextHandleBarReplacement,
                  questionOfCheckListMenu: questionMenuTextWhenDoWe,
                  listDataOfCheckListMenu: handleBarReplacementListData,
                  instructionOfCheckListMenu: instructionForMenuTextOtherAdditionalProblems,
                  priceOfCheckListMenu: priceInIndianCurrency,
                  inspectionChargeCheckListMenu: instructionForMenuTextInspectionCharge,
                ),

                ///Mirror Replacement
                InspectionCheckListMenu(
                  iconImagePath: mirrorReplacementIconCustomMenuImagePath,
                  titleOfCheckListMenu: titleMenuTextMirrorReplacement,
                  questionOfCheckListMenu: questionMenuTextWhenDoWe,
                  listDataOfCheckListMenu: mirrorReplacementListData,
                  instructionOfCheckListMenu: instructionForMenuTextOtherAdditionalProblems,
                  priceOfCheckListMenu: priceInIndianCurrency,
                  inspectionChargeCheckListMenu: instructionForMenuTextInspectionCharge,
                ),

                /// Foot Rest Replacement
                InspectionCheckListMenu(
                  iconImagePath: footRestReplacementIconCustomMenuImagePath,
                  titleOfCheckListMenu: titleMenuTextFootRestReplacement,
                  questionOfCheckListMenu: questionMenuTextWhenDoWe,
                  listDataOfCheckListMenu: foodRestReplacementListData,
                  instructionOfCheckListMenu: instructionForMenuTextOtherAdditionalProblems,
                  priceOfCheckListMenu: priceInIndianCurrency,
                  inspectionChargeCheckListMenu: instructionForMenuTextInspectionCharge,
                ),

                /// Mudguard Replacement
                InspectionCheckListMenu(
                  iconImagePath: mudgaurdReplacementIconCustomMenuImagePath,
                  titleOfCheckListMenu: titleMenuTextMudguardReplacement,
                  questionOfCheckListMenu: questionMenuTextWhenDoWe,
                  listDataOfCheckListMenu: mudguardReplacementListData,
                  instructionOfCheckListMenu: instructionForMenuTextOtherAdditionalProblems,
                  priceOfCheckListMenu: priceInIndianCurrency,
                  inspectionChargeCheckListMenu: instructionForMenuTextInspectionCharge,
                ),

                ///Chain Cover Replacement
                InspectionCheckListMenu(
                  iconImagePath: chainCoverReplacementIconCustomMenuImagePath,
                  titleOfCheckListMenu: titleMenuTextChainCoverReplacement,
                  questionOfCheckListMenu: questionMenuTextWhenDoWe,
                  listDataOfCheckListMenu: chainCoverReplacementListData,
                  instructionOfCheckListMenu: instructionForMenuTextOtherAdditionalProblems,
                  priceOfCheckListMenu: priceInIndianCurrency,
                  inspectionChargeCheckListMenu: instructionForMenuTextInspectionCharge,
                ),

                /// Fork Bend Removal
                InspectionCheckListMenu(
                  iconImagePath: footRestReplacementIconCustomMenuImagePath,
                  titleOfCheckListMenu: titleMenuTextForkBendRemoval,
                  questionOfCheckListMenu: questionMenuTextWhenDoWe,
                  listDataOfCheckListMenu: forkBendRemoveListData,
                  instructionOfCheckListMenu: instructionForMenuTextOtherAdditionalProblems,
                  priceOfCheckListMenu: priceInIndianCurrency,
                  inspectionChargeCheckListMenu: instructionForMenuTextInspectionCharge,
                ),

                ///Head Light Replacement
                InspectionCheckListMenu(
                  iconImagePath: headLightReplacementIconCustomMenuImagePath,
                  titleOfCheckListMenu: titleMenuTextHeadLightReplacement,
                  questionOfCheckListMenu: questionMenuTextWhenDoWe,
                  listDataOfCheckListMenu: headLightReplacementListData,
                  instructionOfCheckListMenu: instructionForMenuTextOtherAdditionalProblems,
                  priceOfCheckListMenu: priceInIndianCurrency,
                  inspectionChargeCheckListMenu: instructionForMenuTextInspectionCharge,
                ),

                ///Tail Light Bulb Replacement
                InspectionCheckListMenu(
                  iconImagePath: tailLightBulbReplacementIconCustomMenuImagePath,
                  titleOfCheckListMenu: titleMenuTextTailLightBulbReplacement,
                  questionOfCheckListMenu: questionMenuTextWhenDoWe,
                  listDataOfCheckListMenu: tailLightBulbReplacementListData,
                  instructionOfCheckListMenu: instructionForMenuTextOtherAdditionalProblems,
                  priceOfCheckListMenu: priceInIndianCurrency,
                  inspectionChargeCheckListMenu: instructionForMenuTextInspectionCharge,
                ),

                /// Indicator Bulb Replacement
                InspectionCheckListMenu(
                  iconImagePath: indicatorBulbReplacementIconCustomMenuImagePath,
                  titleOfCheckListMenu: titleMenuTextIndicatorBulbReplacement,
                  questionOfCheckListMenu: questionMenuTextWhenDoWe,
                  listDataOfCheckListMenu: indicatorBulbReplacementListData,
                  instructionOfCheckListMenu: instructionForMenuTextOtherAdditionalProblems,
                  priceOfCheckListMenu: priceInIndianCurrency,
                  inspectionChargeCheckListMenu: instructionForMenuTextInspectionCharge,
                ),

                /// Parking Bulb Replacement
                InspectionCheckListMenu(
                  iconImagePath: parkingBulbReplacementIconCustomMenuImagePath,
                  titleOfCheckListMenu: titleMenuTextParkingBulbReplacement,
                  questionOfCheckListMenu: questionMenuTextWhenDoWe,
                  listDataOfCheckListMenu: parkingBulbReplacementListData,
                  instructionOfCheckListMenu: instructionForMenuTextOtherAdditionalProblems,
                  priceOfCheckListMenu: priceInIndianCurrency,
                  inspectionChargeCheckListMenu: instructionForMenuTextInspectionCharge,
                ),

                /// Wiser Removal
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: InspectionCheckListMenu(
                    iconImagePath: wiserRemovalIconCustomMenuImagePath,
                    titleOfCheckListMenu: titleMenuTextWiserRemoval,
                    questionOfCheckListMenu: questionMenuTextWhenDoWe,
                    listDataOfCheckListMenu: wiserRemovalListData,
                    instructionOfCheckListMenu: instructionForMenuTextOtherAdditionalProblems,
                    priceOfCheckListMenu: priceInIndianCurrency,
                    inspectionChargeCheckListMenu: instructionForMenuTextInspectionCharge,
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
