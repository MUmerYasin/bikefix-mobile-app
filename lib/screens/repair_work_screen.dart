import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/config.dart';
import 'package:two_wheel_vehicle/widgets.dart';

class RepairWorkScreen extends StatefulWidget {
  const RepairWorkScreen({Key? key}) : super(key: key);

  @override
  _RepairWorkScreenState createState() => _RepairWorkScreenState();
}

class _RepairWorkScreenState extends State<RepairWorkScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ScreenBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ScreenBackgroundColor,
        title: Text(
          screenTitleRepairWork,
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
                ///Break Issue
                InspectionCheckListMenu(
                  iconImagePath: breakIssueIconCustomMenuImagePath,
                  titleOfCheckListMenu: titleMenuTextBreakIssue,
                  questionOfCheckListMenu: questionMenuTextWhenDoWe,
                  listDataOfCheckListMenu: breakIssueListData,
                  instructionOfCheckListMenu: instructionForMenuTextOtherAdditionalProblems,
                  priceOfCheckListMenu: priceInIndianCurrency,
                  inspectionChargeCheckListMenu: instructionForMenuTextInspectionCharge,
                ),

                ///Clutch Issue
                InspectionCheckListMenu(
                  iconImagePath: clutchIssueIconCustomMenuImagePath,
                  titleOfCheckListMenu: titleMenuTextClutchIssue,
                  questionOfCheckListMenu: questionMenuTextWhenDoWe,
                  listDataOfCheckListMenu: clutchIssueListData,
                  instructionOfCheckListMenu: instructionForMenuTextOtherAdditionalProblems,
                  priceOfCheckListMenu: priceInIndianCurrency,
                  inspectionChargeCheckListMenu: instructionForMenuTextInspectionCharge,
                ),

                /// Accelerator Issue
                InspectionCheckListMenu(
                  iconImagePath: handleBarReplacementIconCustomMenuImagePath,
                  titleOfCheckListMenu: titleMenuTextAcceleratorIssue,
                  questionOfCheckListMenu: questionMenuTextWhenDoWe,
                  listDataOfCheckListMenu: acceleratorIssueListData,
                  instructionOfCheckListMenu: instructionForMenuTextOtherAdditionalProblems,
                  priceOfCheckListMenu: priceInIndianCurrency,
                  inspectionChargeCheckListMenu: instructionForMenuTextInspectionCharge,
                ),

                ///Speedometer Issue
                InspectionCheckListMenu(
                  iconImagePath: speedometerIssueIconCustomMenuImagePath,
                  titleOfCheckListMenu: titleMenuTextSpeedometerIssue,
                  questionOfCheckListMenu: questionMenuTextWhenDoWe,
                  listDataOfCheckListMenu: speedometerIssueListData,
                  instructionOfCheckListMenu: instructionForMenuTextOtherAdditionalProblems,
                  priceOfCheckListMenu: priceInIndianCurrency,
                  inspectionChargeCheckListMenu: instructionForMenuTextInspectionCharge,
                ),

                /// Choke Cable Problem
                InspectionCheckListMenu(
                  iconImagePath: chockeCableProblemIconCustomMenuImagePath,
                  titleOfCheckListMenu: titleMenuTextChokeCableProblem,
                  questionOfCheckListMenu: questionMenuTextWhenDoWe,
                  listDataOfCheckListMenu: chokeCableIssueListData,
                  instructionOfCheckListMenu: instructionForMenuTextOtherAdditionalProblems,
                  priceOfCheckListMenu: priceInIndianCurrency,
                  inspectionChargeCheckListMenu: instructionForMenuTextInspectionCharge,
                ),

                /// Lever Problem
                InspectionCheckListMenu(
                  iconImagePath: leverProblemIconCustomMenuImagePath,
                  titleOfCheckListMenu: titleMenuTextLeverProblem,
                  questionOfCheckListMenu: questionMenuTextWhenDoWe,
                  listDataOfCheckListMenu: leverProblemListData,
                  instructionOfCheckListMenu: instructionForMenuTextOtherAdditionalProblems,
                  priceOfCheckListMenu: priceInIndianCurrency,
                  inspectionChargeCheckListMenu: instructionForMenuTextInspectionCharge,
                ),

                ///Switch Problem
                InspectionCheckListMenu(
                  iconImagePath: switchProblemIconCustomMenuImagePath,
                  titleOfCheckListMenu: titleMenuTextSwitchProblem,
                  questionOfCheckListMenu: questionMenuTextWhenDoWe,
                  listDataOfCheckListMenu: switchProblemListData,
                  instructionOfCheckListMenu: instructionForMenuTextOtherAdditionalProblems,
                  priceOfCheckListMenu: priceInIndianCurrency,
                  inspectionChargeCheckListMenu: instructionForMenuTextInspectionCharge,
                ),

                /// Wiring Issue
                InspectionCheckListMenu(
                  iconImagePath: wiserRemovalIconCustomMenuImagePath,
                  titleOfCheckListMenu: titleMenuTextWiringIssue,
                  questionOfCheckListMenu: questionMenuTextWhenDoWe,
                  listDataOfCheckListMenu: wiringIssueListData,
                  instructionOfCheckListMenu: instructionForMenuTextOtherAdditionalProblems,
                  priceOfCheckListMenu: priceInIndianCurrency,
                  inspectionChargeCheckListMenu: instructionForMenuTextInspectionCharge,
                ),

                /// Magnet Issue
                InspectionCheckListMenu(
                  iconImagePath: headLightReplacementIconCustomMenuImagePath,
                  titleOfCheckListMenu: titleMenuTextMagnetIssue,
                  questionOfCheckListMenu: questionMenuTextWhenDoWe,
                  listDataOfCheckListMenu: magnetIssueListData,
                  instructionOfCheckListMenu: instructionForMenuTextOtherAdditionalProblems,
                  priceOfCheckListMenu: priceInIndianCurrency,
                  inspectionChargeCheckListMenu: instructionForMenuTextInspectionCharge,
                ),

                ///Battery Issue
                InspectionCheckListMenu(
                  iconImagePath: batteryRedIconImagePath,
                  titleOfCheckListMenu: titleMenuTextBatteryIssue,
                  questionOfCheckListMenu: questionMenuTextWhenDoWe,
                  listDataOfCheckListMenu: batteryIssueListData,
                  instructionOfCheckListMenu: instructionForMenuTextOtherAdditionalProblems,
                  priceOfCheckListMenu: priceInIndianCurrency,
                  inspectionChargeCheckListMenu: instructionForMenuTextInspectionCharge,
                ),

                /// Fuse Issue
                InspectionCheckListMenu(
                  iconImagePath: indicatorBulbReplacementIconCustomMenuImagePath,
                  titleOfCheckListMenu: titleMenuTextFuseIssue,
                  questionOfCheckListMenu: questionMenuTextWhenDoWe,
                  listDataOfCheckListMenu: fuseIssueListData,
                  instructionOfCheckListMenu: instructionForMenuTextOtherAdditionalProblems,
                  priceOfCheckListMenu: priceInIndianCurrency,
                  inspectionChargeCheckListMenu: instructionForMenuTextInspectionCharge,
                ),

                /// Spark Problem
                InspectionCheckListMenu(
                  iconImagePath: sparkProblemIconCustomMenuImagePath,
                  titleOfCheckListMenu: titleMenuTextSparkProblem,
                  questionOfCheckListMenu: questionMenuTextWhenDoWe,
                  listDataOfCheckListMenu: sparkProblemListData,
                  instructionOfCheckListMenu: instructionForMenuTextOtherAdditionalProblems,
                  priceOfCheckListMenu: priceInIndianCurrency,
                  inspectionChargeCheckListMenu: instructionForMenuTextInspectionCharge,
                ),

                /// Shocker Problem
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: InspectionCheckListMenu(
                    iconImagePath: shockerProblemIconCustomMenuImagePath,
                    titleOfCheckListMenu: titleMenuTextShockerProblem,
                    questionOfCheckListMenu: questionMenuTextWhenDoWe,
                    listDataOfCheckListMenu: shockerProblemListData,
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
