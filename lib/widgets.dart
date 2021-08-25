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
