import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:two_wheel_vehicle/screens/Help_and_Support.dart';
import 'package:two_wheel_vehicle/screens/add_vehicle_screen.dart';
import 'package:two_wheel_vehicle/screens/choose_bike_brand.dart';
import 'package:two_wheel_vehicle/screens/payment_successful_screen.dart';
import 'package:two_wheel_vehicle/screens/payment_unsuccessful_screen.dart';
import 'package:two_wheel_vehicle/screens/subscription_screen.dart';

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
      locale: DevicePreview.locale(context),
      // Add the locale here
      builder: DevicePreview.appBuilder,
      // Add the builder here
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: LoginScreen(), // Front End Final
      // home: PaymentMethodScreen(), // Front End Final
      // home: RegisterScreen(), // Front End Final
      // home: OTPScreen(),  // Front End Final
      // home: MyProfileScreen(), // Front End Final
      // home: LocationScreen(), // Front End Final
      // home: MyVehicles(),  // Front End Final
      // home: MyBookingScreen(),// Front End Final // Develop by Umer
      // home: ServiceStatusScreen(),// Front End Final // Develop by Umer
      // home: AddVehicleScreen(),// Front End Final // Develop by Umer
      // home: ChooseBikeBrand(), // Front End Final // Develop by Umer
      // home: PaymentUnsuccessfulScreen(), // Front End Final // Develop by Umer
      // home: PaymentSuccessfulScreen(), // Front End Final // Develop by Umer
      // home: SubscriptionScreen(), // Front End Final // Develop by Umer
      home: HelpAndSupportScreen(), // Front End Final // Develop by Umer
    );
  }
}
