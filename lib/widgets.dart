import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/config.dart';

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
            depth: 10,
            shape: NeumorphicShape.flat,
            shadowDarkColor: Colors.black,
            shadowLightColor: Colors.white,
            shadowDarkColorEmboss: Colors.black.withOpacity(0.8)

          //  boxShape: NeumorphicBoxShape.circle(),
        ),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: buttonColor,
                textStyle: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w500,
                )),
            onPressed: onPressed,
            child: SizedBox(width: 100, child: Center(child: Text(child ?? '')))),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  String? text;

    CustomTextField({this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Neumorphic(
          style: NeumorphicStyle(
            depth: -10,
            shape: NeumorphicShape.flat,

           shadowDarkColorEmboss: Colors.black.withOpacity(0.8)
            //  boxShape: NeumorphicBoxShape.circle(),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                // border: OutlineInputBorder(),
                border: InputBorder.none,
                labelText: text,
                labelStyle: TextStyle(
                  fontFamily: 'Roboto',
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
              fontFamily: 'Roboto',
              fontSize: 18,
              color: const Color(0xff000000),
            ),
            textAlign: TextAlign.left,
          ),
          Text(
            action ?? '',
            style: TextStyle(
              fontFamily: 'Roboto',
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
            depth: -10,
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
                  fontFamily: 'Roboto',
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
