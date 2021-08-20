import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:two_wheel_vehicle/screens/add_vehicle_screen.dart';
import 'package:two_wheel_vehicle/screens/choose_bike_brand.dart';
import 'package:two_wheel_vehicle/screens/location_screen.dart';
import 'package:two_wheel_vehicle/screens/my_profile_screen.dart';
import 'package:two_wheel_vehicle/screens/my_vehicle_screen.dart';
import 'package:two_wheel_vehicle/screens/mybooking_screen.dart';
import 'package:two_wheel_vehicle/screens/otp_verify_screen.dart';
import 'package:two_wheel_vehicle/screens/paymet_method_screen.dart';
import 'package:two_wheel_vehicle/screens/register_screen.dart';
import 'package:two_wheel_vehicle/screens/service_status_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:two_wheel_vehicle/screens/login_screen.dart';
import 'screens/login_screen.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder, // Add the builder here
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: LoginScreen(), // Front End Final
      home: PaymentMethodScreen(), // Front End Final
      // home: RegisterScreen(),
      // home: OTPScreen(),
      // home: MyProfileScreen(),
      // home: LocationScreen(),
      // home: MyVehicles(),
      // home: MyBookingScreen(),
      // home: ServiceStatusScreen(),
      // home: AddVehicleScreen(),
      // home: ChooseBikeBrand(), // Front End Final // Develop by Umer

    );
  }
}

