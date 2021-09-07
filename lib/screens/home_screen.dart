import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/config.dart';
import 'package:two_wheel_vehicle/screens/Help_and_Support.dart';
import 'package:two_wheel_vehicle/screens/add_vehicle_screen.dart';
import 'package:two_wheel_vehicle/screens/become_a_partner_screen.dart';
import 'package:two_wheel_vehicle/screens/body_work_screen.dart';
import 'package:two_wheel_vehicle/screens/choose_bike_brand.dart';
import 'package:two_wheel_vehicle/screens/engine_work_screen.dart';
import 'package:two_wheel_vehicle/screens/general_service_screen.dart';
import 'package:two_wheel_vehicle/screens/location_screen.dart';
import 'package:two_wheel_vehicle/screens/login_screen.dart';
import 'package:two_wheel_vehicle/screens/my_profile_screen.dart';
import 'package:two_wheel_vehicle/screens/my_vehicle_screen.dart';
import 'package:two_wheel_vehicle/screens/mybooking_screen.dart';
import 'package:two_wheel_vehicle/screens/navigator_helper.dart';
import 'package:two_wheel_vehicle/screens/otp_verify_screen.dart';
import 'package:two_wheel_vehicle/screens/payment_successful_screen.dart';
import 'package:two_wheel_vehicle/screens/register_screen.dart';
import 'package:two_wheel_vehicle/screens/repair_work_screen.dart';
import 'package:two_wheel_vehicle/screens/sell_your_vehicle_screen.dart';
import 'package:two_wheel_vehicle/screens/subscription_screen.dart';
import 'package:two_wheel_vehicle/screens/track_order_screen.dart';
import 'package:two_wheel_vehicle/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  ///---------------------------------------------------
  ///Bottom Navigation Bar

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      // _selectedIndex = index;

      switch (index) {
        case 0:
          // builder = (BuildContext context) => HomeScreen();

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
          break;
        case 1:
          // builder = (BuildContext context) => LocationScreen();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LocationScreen()),
          );
          break;
        case 2:
          // builder = (BuildContext context) => HelpAndSupportScreen();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SellYourVehicleScreen()),
          );
          break;
        case 3:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SubscriptionScreen()),
          );

          break;
        case 4:
          // Scaffold.of(context).openEndDrawer();
          _scaffoldKey.currentState!.openEndDrawer();

          break;
        default:
          throw Exception('Invalid route: Exception'); //${settings.name}
      }
    });
  }

  ///-----------------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      // backgroundColor: NeumorphicColors.background,
      backgroundColor: ScreenBackgroundColor,

      appBar: AppBar(
        elevation: 0,
        // backgroundColor: NeumorphicColors.background,
        backgroundColor: ScreenBackgroundColor,
        title: Text(''),
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Row(
            children: [
              BackButtonOnAppBar(),
            ],
          ),
        ),

        //For Hide Drawer Icon
        actions: <Widget>[Container()],
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                /// Carousel With Indicator
                HomePageCarouselWithIndicator(),

                /// Home Page First Menu
                HomePageFirstMenu(),

                HomePageSingleBikeDetailsList(),

                HomePageSecondMenu(),

                /// Two Social Icon
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16.0,
                    bottom: 16.0,
                    left: 18.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: new Image.asset(
                          phoneLogoImagePath,
                        ),
                        onPressed: () {
                          // print("Pressed");
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Neumorphic(
                          margin: const EdgeInsets.all(0),
                          padding: const EdgeInsets.all(0),
                          style: NeumorphicStyle(
                            depth: 7,
                            shape: NeumorphicShape.flat,
                            shadowDarkColorEmboss:
                                Colors.black.withOpacity(0.7),
                            // boxShape: NeumorphicBoxShape.circle(),
                            shadowDarkColor: Colors.black.withOpacity(0.5),
                            shadowLightColor: Colors.grey,
                            // boxShape: NeumorphicBoxShape.roundRect(
                            //   BorderRadius.circular(8),
                            // ),
                            lightSource: LightSource.topLeft,
                            color: Colors.white10,
                          ),
                          child: IconButton(
                            // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                            icon: new Image.asset(whatsappLogoImagePath),
                            onPressed: () {
                              // print("Pressed");
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      ///Drawer /// Right Side Menu
      endDrawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.55,
        height: MediaQuery.of(context).size.height * 0.75,
        // height: 600,
        child: Drawer(
          elevation: 0.0,
          child: Container(
            color: Colors.black,
            child: ListView(
              // shrinkWrap:true,
              padding: EdgeInsets.zero,

              children: [
                //Single Row Red
                //Icon and text
                //Home
                Container(
                  color: buttonColor,
                  child: ListTile(
                    dense: true,
                    horizontalTitleGap: 2.0,
                    // minLeadingWidth: 2.0,
                    leading: Image.asset(
                      drawerOneImagePath,
                      height: 30.0,
                    ),
                    title: const Text(
                      homeDrawer,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: textFontFamily,
                          fontSize: 15.0),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                  ),
                ),

                //Single Row Black
                //Icon and text
                //profile
                Container(
                  color: Colors.black,
                  child: ListTile(
                    dense: true,
                    horizontalTitleGap: 2.0,
                    leading: Image.asset(
                      drawerProfileImagePath,
                      height: 30.0,
                    ),
                    title: const Text(
                      profileDrawer,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontFamily: textFontFamily,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyProfileScreen()),
                      );
                    },
                  ),
                ),
                //Divider
                Container(
                  color: Colors.black,
                  child: Divider(
                    height: 3.0,
                    thickness: 2.0,
                    color: Colors.white,
                    indent: 16.0,
                    endIndent: 16.0,
                  ),
                ),

                //Single Row
                //Icon and text
                //myVehicleDrawer
                Container(
                  color: Colors.black,
                  child: ListTile(
                    dense: true,
                    horizontalTitleGap: 2.0,
                    leading: Image.asset(
                      drawerMyVehicleImagePath,
                      height: 30.0,
                      width: 30.0,
                    ),
                    title: const Text(
                      myVehicleDrawer,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontFamily: textFontFamily,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyVehicles()),
                      );
                    },
                  ),
                ),
                //Divider
                Container(
                  color: Colors.black,
                  child: Divider(
                    height: 3.0,
                    thickness: 2.0,
                    color: Colors.white,
                    indent: 16.0,
                    endIndent: 16.0,
                  ),
                ),

                //Single Row
                //Icon and text
                //myBookingDrawer
                Container(
                  color: Colors.black,
                  child: ListTile(
                    dense: true,
                    horizontalTitleGap: 2.0,
                    leading: Image.asset(
                      drawerMyBookingImagePath,
                      height: 30.0,
                    ),
                    title: const Text(
                      myBookingDrawer,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontFamily: textFontFamily,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyBookingScreen()),
                      );
                    },
                  ),
                ),
                //Divider
                Container(
                  color: Colors.black,
                  child: Divider(
                    height: 3.0,
                    thickness: 2.0,
                    color: Colors.white,
                    indent: 16.0,
                    endIndent: 16.0,
                  ),
                ),

                //Single Row
                //Icon and text
                //realTimeUpdateDrawer
                Container(
                  color: Colors.black,
                  child: ListTile(
                    dense: true,
                    horizontalTitleGap: 2.0,
                    leading: Image.asset(
                      drawerRealTimeUpdateImagePath,
                      height: 30.0,
                    ),
                    title: const Text(
                      realTimeUpdateDrawer,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontFamily: textFontFamily,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TrackOrderScreen()),
                      );
                    },
                  ),
                ),
                //Divider
                Container(
                  color: Colors.black,
                  child: Divider(
                    height: 3.0,
                    thickness: 2.0,
                    color: Colors.white,
                    indent: 16.0,
                    endIndent: 16.0,
                  ),
                ),

                //Single Row
                //Icon and text
                //HelpAndSupportDrawer
                Container(
                  color: Colors.black,
                  child: ListTile(
                    dense: true,
                    horizontalTitleGap: 2.0,
                    leading: Image.asset(
                      drawerHelpImagePath,
                      height: 30.0,
                    ),
                    title: const Text(
                      HelpAndSupportDrawer,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontFamily: textFontFamily,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HelpAndSupportScreen()),
                      );
                    },
                  ),
                ),
                //Divider
                Container(
                  color: Colors.black,
                  child: Divider(
                    height: 3.0,
                    thickness: 2.0,
                    color: Colors.white,
                    indent: 16.0,
                    endIndent: 16.0,
                  ),
                ),

                //Single Row
                //Icon and text
                //becomeAPartnerDrawer
                Container(
                  color: Colors.black,
                  child: ListTile(
                    dense: true,
                    horizontalTitleGap: 2.0,
                    leading: Image.asset(
                      drawerBecomeAPartnerImagePath,
                      height: 30.0,
                    ),
                    title: const Text(
                      becomeAPartnerDrawer,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontFamily: textFontFamily,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BecomeAPartnerScreen()),
                      );
                    },
                  ),
                ),
                //Divider
                Container(
                  color: Colors.black,
                  child: Divider(
                    height: 3.0,
                    thickness: 2.0,
                    color: Colors.white,
                    indent: 16.0,
                    endIndent: 16.0,
                  ),
                ),

                //Single Row
                //Icon and text
                //shareDrawer
                Container(
                  color: Colors.black,
                  child: ListTile(
                    dense: true,
                    horizontalTitleGap: 2.0,
                    leading: Image.asset(
                      drawerShareImagePath,
                      height: 30.0,
                    ),
                    title: const Text(
                      shareDrawer,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontFamily: textFontFamily,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HelpAndSupportScreen()),
                      );
                    },
                  ),
                ),
                //Divider
                Container(
                  color: Colors.black,
                  child: Divider(
                    height: 3.0,
                    thickness: 2.0,
                    color: Colors.white,
                    indent: 16.0,
                    endIndent: 16.0,
                  ),
                ),

                //Single Row
                //Icon and text
                //aboutDrawer
                Container(
                  color: Colors.black,
                  child: ListTile(
                    dense: true,
                    horizontalTitleGap: 2.0,
                    leading: Image.asset(
                      drawerAboutImagePath,
                      height: 30.0,
                    ),
                    title: const Text(
                      aboutDrawer,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontFamily: textFontFamily,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HelpAndSupportScreen()),
                      );
                    },
                  ),
                ),
                //Divider
                Container(
                  color: Colors.black,
                  child: Divider(
                    height: 3.0,
                    thickness: 2.0,
                    color: Colors.white,
                    indent: 16.0,
                    endIndent: 16.0,
                  ),
                ),

                //Single Row
                //Icon and text
                //logoutDrawer
                Container(
                  color: Colors.black,
                  child: ListTile(
                    dense: true,
                    horizontalTitleGap: 2.0,
                    leading: Image.asset(
                      drawerLogoutImagePath,
                      height: 30.0,
                    ),
                    title: const Text(
                      logoutDrawer,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontFamily: textFontFamily,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                  ),
                ),
                //Divider
              ],
            ),
          ),
        ),
      ),

      ///Bottom Navigation Bar
      bottomNavigationBar: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 10.0),
          child: Neumorphic(
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(0),
            style: NeumorphicStyle(),
            child: BottomNavigationBar(
              elevation: 0.0,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              // type: BottomNavigationBarType.fixed,
              items: <BottomNavigationBarItem>[
                //oneBottomNavigationBarImagePath
                BottomNavigationBarItem(
                  icon: Container(
                    child: Image(
                      image: AssetImage(
                        oneBottomNavigationBarImagePath,
                      ),
                      fit: BoxFit.contain,
                    ),
                    height: 30,
                    width: 30,
                  ),
                  label: '',
                  // backgroundColor: Colors.green,
                ),
                //twoBottomNavigationBarImagePath
                BottomNavigationBarItem(
                  icon: Container(
                    child: Image(
                      image: AssetImage(
                        twoBottomNavigationBarImagePath,
                      ),
                      fit: BoxFit.contain,
                    ),
                    height: 30,
                    width: 30,
                  ),
                  label: '',
                  // backgroundColor: Colors.green,
                ),

                //ThreeBottomNavigationBarImagePath
                BottomNavigationBarItem(
                  icon: Container(
                    child: Image(
                      image: AssetImage(
                        threeBottomNavigationBarImagePath,
                      ),
                      fit: BoxFit.contain,
                    ),
                    height: 30,
                    width: 30,
                  ),
                  label: '',
                  // backgroundColor: Colors.green,
                ),
                //fourBottomNavigationBarImagePath
                BottomNavigationBarItem(
                  icon: Container(
                    child: Image(
                      image: AssetImage(
                        fourBottomNavigationBarImagePath,
                      ),
                      fit: BoxFit.contain,
                    ),
                    height: 30,
                    width: 30,
                  ),
                  label: '',
                  // backgroundColor: Colors.green,
                ),

                // fiveBottomNavigationBarImagePath,
                BottomNavigationBarItem(
                  icon: Container(
                    child: Image(
                      image: AssetImage(
                        // "assets/icons/drawer_logo_black.png"
                        fiveBottomNavigationBarImagePath,
                      ),
                      fit: BoxFit.contain,
                    ),
                    height: 30,
                    width: 30,
                  ),
                  label: '',
                  // backgroundColor: Colors.green,
                ),
              ],
              currentIndex: _selectedIndex,
              // selectedItemColor: Colors.amber[800],
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}

/// Image Path Pictures of Carousel Slider
final List<String> imgList = [
  mainPicCarouselSliderOneImagePath,
  mainPicCarouselSliderOneImagePath,
  mainPicCarouselSliderOneImagePath,
  mainPicCarouselSliderOneImagePath,
];

/// Main Class for Making Carousel Slider
class HomePageCarouselWithIndicator extends StatefulWidget {
  const HomePageCarouselWithIndicator({Key? key}) : super(key: key);

  @override
  _HomePageCarouselWithIndicatorState createState() =>
      _HomePageCarouselWithIndicatorState();
}

class _HomePageCarouselWithIndicatorState
    extends State<HomePageCarouselWithIndicator> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        depth: 8,
        shape: NeumorphicShape.flat,
        shadowDarkColorEmboss: Colors.black.withOpacity(0.7),
        // boxShape: NeumorphicBoxShape.circle(),
        shadowDarkColor: Colors.black.withOpacity(0.7),
        shadowLightColor: Colors.white,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 120,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CarouselSlider(
                carouselController: _controller,
                options: CarouselOptions(
                    height: 120.0,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 2.0,
                    viewportFraction: 1.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
                items: imgList.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(
                            horizontal: 0.0, vertical: 0.0),
                        decoration: BoxDecoration(
                            // color: Colors.amber
                            ),

                        ///Add Images and Dots
                        child: Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            Image.asset(
                              i,
                              height: double.infinity,
                              width: double.infinity,
                              fit: BoxFit.fill,
                            ),

                            ///For Dots Show in Picture
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: imgList.asMap().entries.map((entry) {
                                return GestureDetector(
                                  onTap: () =>
                                      _controller.animateToPage(entry.key),
                                  child: Container(
                                    width: 8.0,
                                    height: 8.0,
                                    margin: EdgeInsets.symmetric(
                                        vertical: 2.0, horizontal: 4.0),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: (_current == entry.key
                                              ? Colors.red
                                              : Colors.white)
                                          .withOpacity(
                                              _current == entry.key ? 1 : 1),
                                    ),

                                    // color: (Theme.of(context).brightness == Brightness.dark
                                    //     ? Colors.white
                                    //     : Colors.red)
                                    //     .withOpacity(_current == entry.key ? 0.9 : 0.4),),
                                  ),
                                );
                              }).toList(),
                            ),
                          ],
                          //
                        ),
                        // Text('text $i', style: TextStyle(fontSize: 16.0),)
                      );
                    },
                  );
                }).toList(),
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: imgList.asMap().entries.map((entry) {
              //     return GestureDetector(
              //       onTap: () => _controller.animateToPage(entry.key),
              //       child: Container(
              //         width: 12.0,
              //         height: 12.0,
              //         margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              //         decoration: BoxDecoration(
              //             shape: BoxShape.circle,
              //             color: (Theme.of(context).brightness == Brightness.dark
              //                 ? Colors.white
              //                 : Colors.black)
              //                 .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              //       ),
              //     );
              //   }).toList(),
              // ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(top: 16.0,),
              //       child: Image.asset(paymentUnsuccessfulImagePath, height:120.0,fit:BoxFit.cover ,),
              //     ),
              //   ],
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.all(18.0),
              //       child: Text(paymentUnsuccessfulText, style: TextStyle(
              //         fontFamily: textFontFamily,
              //         fontSize: 18,
              //         color: Colors.black,
              //         fontWeight: FontWeight.bold,
              //       ),),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Home Page 1 Menu
///Genuine Parts, Warranty, Affordable, Pick & Drop

class HomePageFirstMenu extends StatefulWidget {
  const HomePageFirstMenu({Key? key}) : super(key: key);

  @override
  _HomePageFirstMenuState createState() => _HomePageFirstMenuState();
}

class _HomePageFirstMenuState extends State<HomePageFirstMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Neumorphic(
        style: NeumorphicStyle(
          depth: 8,
          shape: NeumorphicShape.flat,
          shadowDarkColorEmboss: Colors.black.withOpacity(0.7),
          // boxShape: NeumorphicBoxShape.circle(),
          shadowDarkColor: Colors.black.withOpacity(0.7),
          shadowLightColor: Colors.white,
          color: Colors.blue,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 90,
          child: Row(
            // mainAxisSize : MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => AddVehicleScreen()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      genuinePartsHomePageIcon,
                      width: 30.0,
                      height: 30.0,
                    ),
                    Text(
                      genuinePartsHomePageText,
                      style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => ChooseBikeBrand()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      warrantyHomePageIcon,
                      width: 30.0,
                      height: 30.0,
                    ),
                    Text(
                      warrantyHomePageText,
                      style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) => OTPScreen()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      affordableHomePageIcon,
                      width: 30.0,
                      height: 30.0,
                    ),
                    Text(
                      affordableHomePageText,
                      style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => PaymentSuccessfulScreen()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      pickUpAndDropHomePageIcon,
                      width: 30.0,
                      height: 30.0,
                    ),
                    Text(
                      pickDropHomePageText,
                      style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///Home Page Single Bike Details List
///Bike Name, Details, Icon, Edit button, add icon
class HomePageSingleBikeDetailsList extends StatefulWidget {
  const HomePageSingleBikeDetailsList({Key? key}) : super(key: key);

  @override
  _HomePageSingleBikeDetailsListState createState() =>
      _HomePageSingleBikeDetailsListState();
}

class _HomePageSingleBikeDetailsListState
    extends State<HomePageSingleBikeDetailsList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Neumorphic(
        style: NeumorphicStyle(
          depth: 8,
          shape: NeumorphicShape.flat,
          shadowDarkColorEmboss: Colors.black.withOpacity(0.7),
          // boxShape: NeumorphicBoxShape.circle(),
          shadowDarkColor: Colors.black.withOpacity(0.7),
          shadowLightColor: Colors.white,
          color: Colors.white,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 90,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  bikeImageImagePath,
                  width: 60,
                ),
                Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontFamily: textFontFamily,
                      fontSize: 14,
                      color: const Color(0xff000000),
                    ),
                    children: [
                      TextSpan(
                        text: companyNameKTM + '\n',
                      ),
                      TextSpan(
                        text: bikeDetailsHundredDuke,
                        style: TextStyle(
                          color: const Color(0xffd33937),
                        ),
                      ),
                    ],
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                ),

                SizedBox(
                  height: 30,
                  width: 70,
                  child: RoundedCornerButton(
                    child: buttonNameEdit,
                    onPressed: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => MyVehicles()));
                    },
                  ),
                ),

                InkWell(
                  onTap: () {
                    gotoScreen(context: context, screen: AddVehicleScreen());
                  },
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(50)),
                        shadowLightColorEmboss: Colors.white,
                        shadowDarkColorEmboss: Colors.black,
                        shadowDarkColor: Colors.black),
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                      // color: Color(0xffEEF0F5),
                    ),
                  ),
                ),

                // Neumorphic(
                //   style: NeumorphicStyle(
                //       shape: NeumorphicShape.flat,
                //       boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
                //     depth: 8,
                //     shadowDarkColorEmboss: Colors.black.withOpacity(0.7),
                //     shadowDarkColor: Colors.black.withOpacity(0.7),
                //     shadowLightColor: Colors.white,
                //     color: Colors.white,
                //   ),
                //   child: IconButton(onPressed: (){
                //     Navigator.push(context, CupertinoPageRoute(builder: (context)=>MyVehicles()));
                //   }, icon: Icon(CupertinoIcons.add,size: 22,),),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

///  Home Page 1 Menu
///  General Service, Engine Work, Body Work, Repair Work

class HomePageSecondMenu extends StatefulWidget {
  const HomePageSecondMenu({Key? key}) : super(key: key);

  @override
  _HomePageSecondMenuState createState() => _HomePageSecondMenuState();
}

class _HomePageSecondMenuState extends State<HomePageSecondMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Neumorphic(
        style: NeumorphicStyle(
          depth: 8,
          shape: NeumorphicShape.flat,
          shadowDarkColorEmboss: Colors.black.withOpacity(0.7),
          // boxShape: NeumorphicBoxShape.circle(),
          shadowDarkColor: Colors.black.withOpacity(0.7),
          shadowLightColor: Colors.white,
          color: Colors.white,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 90,
          child: Row(
            // mainAxisSize : MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ///GeneralServiceScreen
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => GeneralServiceScreen()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Neumorphic(
                      style: NeumorphicStyle(
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(50)),
                          shadowLightColorEmboss: Colors.white,
                          shadowDarkColorEmboss: Colors.black,
                          shadowDarkColor: Colors.black),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Image.asset(
                          generalServiceHomePageIcon,
                          width: 30.0,
                          height: 30.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Text(
                      generalServiceHomePageText,

                      // maxLines: 2,
                      // overflow: TextOverflow.ellipsis,
                      // // textDirection: TextDirection.rtl,
                      // textAlign: TextAlign.justify,

                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              ///EngineWorkScreen
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => EngineWorkScreen()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Neumorphic(
                      style: NeumorphicStyle(
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(50)),
                          shadowLightColorEmboss: Colors.white,
                          shadowDarkColorEmboss: Colors.black,
                          shadowDarkColor: Colors.black),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Image.asset(
                          engineWorkHomePageIcon,
                          width: 30.0,
                          height: 30.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Text(
                      engineWorkHomePageText,
                      style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              ///BodyWorkScreen
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => BodyWorkScreen()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Neumorphic(
                      style: NeumorphicStyle(
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(50)),
                          shadowLightColorEmboss: Colors.white,
                          shadowDarkColorEmboss: Colors.black,
                          shadowDarkColor: Colors.black),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Image.asset(
                          bodyWorkHomePageIcon,
                          width: 30.0,
                          height: 30.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Text(
                      bodyWorkHomePageText,
                      softWrap: true,
                      style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              ///RepairWorkScreen
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => RepairWorkScreen()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Neumorphic(
                      style: NeumorphicStyle(
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(50)),
                          shadowLightColorEmboss: Colors.white,
                          shadowDarkColorEmboss: Colors.black,
                          shadowDarkColor: Colors.black),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Image.asset(
                          repairWorkHomePageIcon,
                          width: 30.0,
                          height: 30.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Text(
                      repairWorkHomePageText,
                      style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
