import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/config.dart';
import 'package:two_wheel_vehicle/widgets.dart';

class EngineWorkScreen extends StatefulWidget {
  const EngineWorkScreen({Key? key}) : super(key: key);

  @override
  _EngineWorkScreenState createState() => _EngineWorkScreenState();
}

class _EngineWorkScreenState extends State<EngineWorkScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ScreenBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ScreenBackgroundColor,
        title: Text(
          screenTitleEngineWork,
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
                ///Half Engine
                InspectionCheckListMenu(
                  iconImagePath: engineWorkHomePageIcon,
                  titleOfCheckListMenu: titleMenuTextHalfEngine,
                  questionOfCheckListMenu: questionMenuTextWhatServices,
                  listDataOfCheckListMenu: halfEngineListData,
                  instructionOfCheckListMenu: instructionForMenuTextOtherAdditionalProblems,
                  priceOfCheckListMenu: priceInIndianCurrency,
                  inspectionChargeCheckListMenu: instructionForMenuTextInspectionCharge,
                ),

                /// Full Engine
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: InspectionCheckListMenu(
                    iconImagePath: engineWorkHomePageIcon,
                    titleOfCheckListMenu: titleMenuTextFullEngine,
                    questionOfCheckListMenu: questionMenuTextWhatServices,
                    listDataOfCheckListMenu: fullEngineListData,
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
