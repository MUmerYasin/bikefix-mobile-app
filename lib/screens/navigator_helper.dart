
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:two_wheel_vehicle/screens/login_screen.dart';

gotoScreen({BuildContext? context,Widget? screen}){
  Navigator.push(context!,
      CupertinoPageRoute(builder: (context) {
        return screen??LoginScreen();
      }));
}