import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/config.dart';

/// Custom App Bar
class CustomAppBar extends StatelessWidget {
  String? title;
  String? action;
  Function()? onTap;

  CustomAppBar({this.title, this.action, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
              onTap: onTap ?? () {},
              child: Image.asset('assets/icons/back_icon.png')),
          Text(
            title ?? '',
            style: TextStyle(
              fontFamily: textFontFamily,
              fontSize: 18,
              color: const Color(0xff000000),
            ),
            textAlign: TextAlign.left,
          ),
          Text(
            action ?? '',
            style: TextStyle(
              fontFamily: textFontFamily,
              fontSize: 18,
              color: const Color(0xff000000),
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}

/// Custom Text Field
class CustomTextField extends StatelessWidget {
  String? text;

  CustomTextField({this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Neumorphic(
          style: NeumorphicStyle(
              depth: -8,
              shape: NeumorphicShape.flat,
              shadowDarkColorEmboss: Colors.black.withOpacity(0.8)
              //  boxShape: NeumorphicBoxShape.circle(),
              ),
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: TextField(
              decoration: InputDecoration(
                // border: OutlineInputBorder(),
                border: InputBorder.none,
                labelText: text,
                labelStyle: TextStyle(
                  fontFamily: textFontFamily,
                  fontSize: 14,
                  color: const Color(0xff828284),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Button Custom Design
class SmallRoundedCornerButton extends StatelessWidget {
  Function()? onPressed;
  String? child;
  bool? color;

  SmallRoundedCornerButton({this.onPressed, this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Neumorphic(
        style: NeumorphicStyle(
            depth: 10,
            shape: NeumorphicShape.flat,
            shadowDarkColor: Colors.black12,
            shadowLightColor: Colors.white,
            shadowDarkColorEmboss: Colors.black.withOpacity(0.8)

            //  boxShape: NeumorphicBoxShape.circle(),
            ),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: color! ? buttonColor : Colors.black,
                textStyle: TextStyle(
                  fontFamily: textFontFamily,
                  fontSize: 18,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w500,
                )),
            onPressed: onPressed,
            child: Center(child: Text(child ?? ''))),
      ),
    );
  }
}

class RoundedCornerButton extends StatelessWidget {
  Function()? onPressed;
  String? child;

  RoundedCornerButton({this.onPressed, this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Neumorphic(
        style: NeumorphicStyle(
            depth: 8,
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
                  fontSize: 18,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w500,
                )),
            onPressed: onPressed,
            child:
                SizedBox(width: 100, child: Center(child: Text(child ?? '')))),
      ),
    );
  }
}

/// Divider Custom Design
class DividerCustom extends StatefulWidget {
  const DividerCustom({Key? key}) : super(key: key);

  @override
  _DividerCustomState createState() => _DividerCustomState();
}

class _DividerCustomState extends State<DividerCustom> {
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        // shadowLightColorEmboss: Colors.white,
        // shadowDarkColorEmboss: Colors.black,
        // shadowDarkColor: Colors.black,

        shadowLightColorEmboss: Colors.white,
        shadowDarkColorEmboss: Colors.black,
        shadowDarkColor: Colors.black54,
        shape: NeumorphicShape.flat,
        depth: -1,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * .8,
        height: 5,
        color: Colors.white,
      ),
    );
  }
}

// ///
// class ListtileCustom extends StatefulWidget {
//    ListtileCustom({Key? key,}) : super(key: key);
//   String Radiobutton = '';
//   int id = 1;
//   @override
//   _ListtileCustomState createState() => _ListtileCustomState();
// }
//
// class _ListtileCustomState extends State<ListtileCustom> {
//   @override
//   Widget build(BuildContext context) {
//     return   ListTile(
//       horizontalTitleGap: 0.0,
//       contentPadding: EdgeInsets.fromLTRB(25, 0, 5.0, 0),
//       leading: Image(
//         image: AssetImage(paytmLogoImagePath),
//         // fit: BoxFit.fitWidth,
//         alignment: Alignment.bottomCenter,
//         // color: Colors.deepPurple,
//       ),
//       trailing: Radio<int>(
//           value: 1,
//           groupValue: null,
//           onChanged: (val) {
//             setState(() {
//               id = 1;
//               Radiobutton = '';
//             });
//           }),
//       title: Text(
//         PaytmText,
//         style: TextStyle(fontWeight: FontWeight.w500),
//       ),
//     );
//   }
// }

/// Custom Drop Down Menu
// class CustomDropDownMenu extends StatelessWidget {
//   String? text;
//
//   String secondDropDownValue = 'Albania';
//
//
//   var countryList = [
//     "Albania",
//     "Afghanistan",
//     "Algeria",
//     "New Zealand",
//     "Samoa",
//     "San Marino",
//     "Satellite",
//     "Zambia",
//     "Zimbabwe"
//   ];
//
//   // CustomDropDownMenu({this.text});
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 65,
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Neumorphic(
//           style: NeumorphicStyle(
//               depth: -8,
//               shape: NeumorphicShape.flat,
//
//               shadowDarkColorEmboss: Colors.black.withOpacity(0.8)
//             //  boxShape: NeumorphicBoxShape.circle(),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(17.0),
//             child:
//             // TextField(
//             //   decoration: InputDecoration(
//             //     // border: OutlineInputBorder(),
//             //     border: InputBorder.none,
//             //     labelText: text,
//             //     labelStyle: TextStyle(
//             //       fontFamily: textFontFamily,
//             //       fontSize: 14,
//             //       color: const Color(0xff828284),
//             //     ),
//             //   ),
//             // ),
//
//             DropdownButton(
//               isExpanded: true,
//               value: secondDropDownValue,
//               icon: const Icon(
//                 Icons.arrow_downward,
//                 // color: Colors.white,
//               ),
//               iconSize: 15,
//
//               elevation: 24,
//               // dropdownColor: Colors.deepPurple,
//               style: const TextStyle(
//                 // color: Colors.white,
//                 // fontSize: 15.0,
//                 // backgroundColor: Colors.deepPurple,
//               ),
//               // underline: Container(
//               //   height: 2,
//               //   //color: Colors.white,
//               // ),
//               items: countryList.map((countryName) {
//                 return DropdownMenuItem(
//                   value: countryName,
//                   child: Text(countryName),
//                 );
//               }).toList(),
//               onChanged: (String? newValue) {
//                 setState(() {
//                   secondDropDownValue = newValue!;
//                 });
//               },
//             ),
//
//           ),
//         ),
//       ),
//     );
//   }
// }

class CustomDropDownMenu extends StatefulWidget {
  CustomDropDownMenu(
      {Key? key,
      required this.customDropDownValue,
      required this.bikeDetailsData})
      : super(key: key);

  String customDropDownValue;
  var bikeDetailsData = <String>[];

  // var countryList = [
  //   "Albania",
  //   "Afghanistan",
  //   "Algeria",
  //   "New Zealand",
  //   "Samoa",
  //   "San Marino",
  //   "Satellite",
  //   "Zambia",
  //   "Zimbabwe"
  // ];
  String getCustomDropDownValue() {
    return customDropDownValue;
  }

  @override
  _CustomDropDownMenuState createState() => _CustomDropDownMenuState();
}

class _CustomDropDownMenuState extends State<CustomDropDownMenu> {
  @override
  Widget build(BuildContext context) {
    return


        SizedBox(
      height: 65,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Neumorphic(
          style: NeumorphicStyle(
            depth: 8,
            shape: NeumorphicShape.flat,
            shadowDarkColorEmboss: Colors.black.withOpacity(0.7),
            // boxShape: NeumorphicBoxShape.circle(),

            shadowDarkColor: Colors.black.withOpacity(0.7),
            shadowLightColor: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: DropdownButton(
              isExpanded: true,
              value: widget.customDropDownValue,
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
              ),
              iconSize: 30,
              elevation: 24,
              // dropdownColor: Colors.deepPurple,
              style: const TextStyle(
                fontFamily: textFontFamily,
                fontSize: 14,
                color: Colors.black,
                // backgroundColor: Colors.deepPurple,
              ),

              underline: Container(
                height: 1,
                color: Colors.transparent,
              ),
              items: widget.bikeDetailsData.map((bikeData) {
                return DropdownMenuItem(
                  value: bikeData,
                  child: Text(bikeData),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  widget.customDropDownValue = newValue!;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
// String
}

/// Show Bike Title Details, {Name, Details, bike Image}
class BikeTitleDetailsHeading extends StatefulWidget {
  // const BikeTitleDetailsHeading({Key? key}) : super(key: key);

  final String currentBikeName;
  final String currentBikeDetails;
  final String bikeImages;

  const BikeTitleDetailsHeading(
      {Key? key,
        required this.currentBikeName,
        required this.currentBikeDetails,
        required this.bikeImages})
      : super(key: key);

  @override
  _BikeTitleDetailsHeadingState createState() =>
      _BikeTitleDetailsHeadingState();
}

class _BikeTitleDetailsHeadingState extends State<BikeTitleDetailsHeading> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 10),
      child: Neumorphic(
        style: NeumorphicStyle(
          // shadowLightColorEmboss: Colors.white,
          // shadowDarkColorEmboss: Colors.black,
          // shadowDarkColor: Colors.black,
          shadowDarkColor: Colors.black.withOpacity(0.6),
          depth: 7,
          shape: NeumorphicShape.flat,
          // shadowDarkColor: Colors.black12,
          shadowLightColor: Colors.white,
          shadowDarkColorEmboss: Colors.black.withOpacity(0.8),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 25.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            gradient: LinearGradient(
              begin: Alignment(-1.0, -1.0),
              end: Alignment(1.01, 1.0),
              colors: [const Color(0xffeef0f5), const Color(0xffe6e9ef)],
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ///Bike Name, Details,
              Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: textFontFamily,
                    fontSize: 18,
                    color: const Color(0xff000000),
                  ),
                  children: [
                    /// Bike Name
                    TextSpan(
                      text: widget.currentBikeName + '\n',
                    ),
                    TextSpan(
                      /// Bike Details
                      text: widget.currentBikeDetails,
                      style: TextStyle(
                        color: buttonColor,
                      ),
                    ),
                  ],
                ),
                textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
              ),

              ///Bike Image
              Image.asset(widget.bikeImages),
            ],
          ),
        ),
      ),
    );
  }
}

