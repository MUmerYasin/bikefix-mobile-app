
import 'package:flutter/material.dart';
import 'package:two_wheel_vehicle/screens/login_screen.dart';

gotoScreen({BuildContext? context,Widget? screen}){
  Navigator.push(context!,
      MaterialPageRoute(builder: (context) {
        return screen??LoginScreen();
      }));
}