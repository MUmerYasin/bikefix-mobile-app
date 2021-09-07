import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:two_wheel_vehicle/config.dart';
import 'package:two_wheel_vehicle/screens/add_vehicle_screen.dart';
import 'package:two_wheel_vehicle/screens/navigator_helper.dart';
import 'package:two_wheel_vehicle/widgets.dart';

class ChooseBikeBrand extends StatefulWidget {
  const ChooseBikeBrand({Key? key}) : super(key: key);

  @override
  _ChooseBikeBrandState createState() => _ChooseBikeBrandState();
}

class _ChooseBikeBrandState extends State<ChooseBikeBrand> {
  // int selected = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ScreenBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: true,
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
          screenTitleChooseBikeBrand,
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
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all(15),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// Find TextField
              SizedBox(
                height: 65,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        depth: -6,
                        shape: NeumorphicShape.flat,
                        shadowDarkColorEmboss: Colors.black.withOpacity(0.8)
                        //  boxShape: NeumorphicBoxShape.circle(),
                        ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
                      child: TextField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          // border: OutlineInputBorder(),
                          isDense: true,
                          // Added this
                          // contentPadding: EdgeInsets.symmetric(vertical:20.0, horizontal: 0.0),
                          border: InputBorder.none,
                          labelText: textFieldNameFind,
                          labelStyle: TextStyle(
                            fontFamily: textFontFamily,
                            fontSize: 20,
                            color: const Color(0xff828284),
                          ),
                          icon: FaIcon(
                            FontAwesomeIcons.search,
                            size: 15.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              /// GridView of Choose Bike Brand.
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.8,
                child: GestureDetector(
                  // onTap: () {
                  //   setState((
                  //       ) {
                  //
                  //     showDialog(
                  //       context: context,
                  //       builder: (a) => AlertDialog(
                  //         title: Text(a.toString(),),
                  //         content: Text(context.toString(),),
                  //         actions: <Widget>[
                  //           ElevatedButton(
                  //               onPressed: () {
                  //                 Navigator.of(context).pop();
                  //               },
                  //               child: Text('Close'),),
                  //         ],
                  //       ),
                  //     );
                  //
                  //   },
                  //   );
                  // },
                child: GridView.count(
                  // primary: false,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,

                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  crossAxisCount: 3,

                  children: <Widget>[


                    GridViewOfChooseBikeBrandSingleItems(
                        textShowData: gridViewChooseBikeBrandText1,
                        imagePaths: ktmLogoImagePath),

                    GridViewOfChooseBikeBrandSingleItems(
                        textShowData: gridViewChooseBikeBrandText2,
                        imagePaths: tvsLogoImagePath),
                    GridViewOfChooseBikeBrandSingleItems(
                        textShowData: gridViewChooseBikeBrandText3,
                        imagePaths: bajajLogoImagePath),
                    GridViewOfChooseBikeBrandSingleItems(
                        textShowData: gridViewChooseBikeBrandText4,
                        imagePaths: royalEnfieldLogoImagePath),
                    GridViewOfChooseBikeBrandSingleItems(
                        textShowData: gridViewChooseBikeBrandText1,
                        imagePaths: ktmLogoImagePath),
                    GridViewOfChooseBikeBrandSingleItems(
                        textShowData: gridViewChooseBikeBrandText2,
                        imagePaths: tvsLogoImagePath),
                    GridViewOfChooseBikeBrandSingleItems(
                        textShowData: gridViewChooseBikeBrandText2,
                        imagePaths: tvsLogoImagePath),
                    GridViewOfChooseBikeBrandSingleItems(
                        textShowData: gridViewChooseBikeBrandText3,
                        imagePaths: bajajLogoImagePath),
                    GridViewOfChooseBikeBrandSingleItems(
                        textShowData: gridViewChooseBikeBrandText4,
                        imagePaths: royalEnfieldLogoImagePath),
                    GridViewOfChooseBikeBrandSingleItems(
                        textShowData: gridViewChooseBikeBrandText1,
                        imagePaths: ktmLogoImagePath),
                    GridViewOfChooseBikeBrandSingleItems(
                        textShowData: gridViewChooseBikeBrandText2,
                        imagePaths: tvsLogoImagePath),
                    GridViewOfChooseBikeBrandSingleItems(
                        textShowData: gridViewChooseBikeBrandText3,
                        imagePaths: bajajLogoImagePath),
                    GridViewOfChooseBikeBrandSingleItems(
                        textShowData: gridViewChooseBikeBrandText4,
                        imagePaths: royalEnfieldLogoImagePath),
                    GridViewOfChooseBikeBrandSingleItems(
                        textShowData: gridViewChooseBikeBrandText1,
                        imagePaths: ktmLogoImagePath),
                    GridViewOfChooseBikeBrandSingleItems(
                        textShowData: gridViewChooseBikeBrandText2,
                        imagePaths: tvsLogoImagePath),
                    GridViewOfChooseBikeBrandSingleItems(
                        textShowData: gridViewChooseBikeBrandText2,
                        imagePaths: tvsLogoImagePath),
                    GridViewOfChooseBikeBrandSingleItems(
                        textShowData: gridViewChooseBikeBrandText3,
                        imagePaths: bajajLogoImagePath),
                    GridViewOfChooseBikeBrandSingleItems(
                        textShowData: gridViewChooseBikeBrandText4,
                        imagePaths: royalEnfieldLogoImagePath),
                  ],
                ),
                ),
              ),

              /// Proceed Button
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
                          gotoScreen(context: context, screen: AddVehicleScreen());

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
      // ),
    );
  }
}

/// Class that handle (Create) every single items GridView of Choose Bike Brand.

class GridViewOfChooseBikeBrandSingleItems extends StatefulWidget {
  final String imagePaths;
  final String textShowData;

  const GridViewOfChooseBikeBrandSingleItems(
      {Key? key, required this.textShowData, required this.imagePaths})
      : super(key: key);

  @override
  _GridViewOfChooseBikeBrandSingleItemsState createState() =>
      _GridViewOfChooseBikeBrandSingleItemsState();
}

class _GridViewOfChooseBikeBrandSingleItemsState
    extends State<GridViewOfChooseBikeBrandSingleItems> {

  Color buttonColors = Colors.black;

  @override
  dispose(){
    super.dispose();

  }

  @override
  void initState() {
    super.initState();
    buttonColors = Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      padding: const EdgeInsets.all(8),

      style: NeumorphicStyle(
        shadowDarkColor: buttonColors.withOpacity(0.8),
        depth: 7,
        shape: NeumorphicShape.flat,
        shadowLightColor: Colors.white.withOpacity(0.6),
        shadowDarkColorEmboss: buttonColors.withOpacity(0.8),
      ),

      child: GestureDetector(

        onTap: () {
          setState((
              ) {

            if(buttonColors==Colors.black){
              buttonColors = Color(0xffE34D3D);
            }
            else{
              buttonColors = Colors.black;
            }


          },
          );
        },

        // onSecondaryTapCancel: () {
        //   setState((
        //       ) {
        //     super.dispose();
        //     buttonColors = Color(0xffE5E5E5);
        //   },
        //   );
        // },



       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Expanded(
             child: Image(
               image: AssetImage(widget.imagePaths),
             ),
           ),
           Text(
             widget.textShowData,
             style: TextStyle(fontSize: 11.0,),
           ),
         ],
       ),
        ),
    );
  }
}
