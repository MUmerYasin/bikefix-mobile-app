import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/config.dart';
import 'package:two_wheel_vehicle/screens/Help_and_Support.dart';
import 'package:two_wheel_vehicle/screens/location_screen.dart';
import 'package:two_wheel_vehicle/screens/navigator_helper.dart';
import 'package:two_wheel_vehicle/screens/subscription_screen.dart';
import 'package:two_wheel_vehicle/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ///---------------------------------------------------
  ///Bottom Navigation Bar

  int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  // TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  //
  // static List<Widget> _widgetOptions = <Widget>[
  //   Container(height: 0.0,
  //   child: Row(
  //     children: [
  //       // Scaffold.of(context).openEndDrawer(),
  //
  //     ],
  //   ),),
  //   Container(height: 0.0,),
  //   Container(height: 0.0,),
  //   Container(height: 0.0,),
  //   Container(height: 0.0,),
  // ];

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
            MaterialPageRoute(builder: (context) => HelpAndSupportScreen()),
          );
          break;
        case 3:

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SubscriptionScreen()),
          );

          break;
        case 4:
          Scaffold.of(context).openEndDrawer();

          break;
        default:
          throw Exception('Invalid route: Exception');//${settings.name}
      }

    });
  }

  ///-----------------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicColors.background,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: NeumorphicColors.background,
        title: Text(''),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.black,
            )),

        //For Hide Drawer Icon
        actions: <Widget>[Container()],
        automaticallyImplyLeading: false,

      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              /// Carousel With Indicator
              HomePageCarouselWithIndicator(),


              Padding(
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
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [],
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [],
                      ),
                    ),
                  ),
                ),
              ),
///run Bottom Navigation Bar
//               SizedBox(
//                 child: _widgetOptions.elementAt(_selectedIndex),
//               ),

              Padding(
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [],
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),

      ///Drawer /// Right Side Menu
      endDrawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.55,
        height: MediaQuery.of(context).size.height *0.75,
        // height: 600,
        child: Drawer(
          elevation: 0.0,

          //////--------------------------------
          //icon for drawer
          //Scaffold.of(context).openEndDrawer(),
          // child: IconButton(
          //                   icon: Icon(Icons.menu,
          //                   size: 24,
          //                   color: Colors.white,),
          //                   onPressed: () => scaffoldKey.currentState.openDrawer(),
          //                 ),
          //------------------------------------

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
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
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
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
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
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
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
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
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
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
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
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
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
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
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
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
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
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
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
          padding: const EdgeInsets.only(left: 16.0,right: 16.0,bottom: 10.0),
          child: Neumorphic(
              margin : const EdgeInsets.all(0),
            padding : const EdgeInsets.all(0),
            style: NeumorphicStyle(

            ),
            child: BottomNavigationBar(
              elevation:0.0,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              // type: BottomNavigationBarType.fixed,
              items:  <BottomNavigationBarItem>[
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

// final List<Widget> imageSliders = imgList
//     .map((item) => Container(
//   child: Container(
//     margin: EdgeInsets.all(5.0),
//     child: ClipRRect(
//         borderRadius: BorderRadius.all(Radius.circular(5.0)),
//         child: Stack(
//           children: <Widget>[
//             Image.asset(item, fit: BoxFit.cover, width: 150.0,),
//             Positioned(
//               bottom: 0.0,
//               left: 0.0,
//               right: 0.0,
//               child: Container(
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [
//                       Color.fromARGB(200, 0, 0, 0),
//                       Color.fromARGB(0, 0, 0, 0)
//                     ],
//                     begin: Alignment.bottomCenter,
//                     end: Alignment.topCenter,
//                   ),
//                 ),
//                 padding: EdgeInsets.symmetric(
//                     vertical: 10.0, horizontal: 20.0),
//                 child: Text(
//                   '',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 20.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         )),
//   ),
// ))
//     .toList();
//
// class CarouselWithIndicatorDemo extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _CarouselWithIndicatorState();
//   }
// }
//
// class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
//   int _current = 0;
//   final CarouselController _controller = CarouselController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Carousel with indicator controller demo')),
//       body: Column(children: [
//         Expanded(
//           child: CarouselSlider(
//             items: imageSliders,
//             carouselController: _controller,
//             options: CarouselOptions(
//                 autoPlay: true,
//                 enlargeCenterPage: true,
//                 aspectRatio: 2.0,
//                 onPageChanged: (index, reason) {
//                   setState(() {
//                     _current = index;
//                   });
//                 }),
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: imgList.asMap().entries.map((entry) {
//             return GestureDetector(
//               onTap: () => _controller.animateToPage(entry.key),
//               child: Container(
//                 width: 12.0,
//                 height: 12.0,
//                 margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
//                 decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: (Theme.of(context).brightness == Brightness.dark
//                         ? Colors.white
//                         : Colors.black)
//                         .withOpacity(_current == entry.key ? 0.9 : 0.4)),
//               ),
//             );
//           }).toList(),
//         ),
//       ]),
//     );
//   }
// }
//


//
// class DrawerSingleItemsCreate extends StatefulWidget {
//   // const DrawerSingleItemsCreate({Key? key}) : super(key: key);
//   bool? color;
//   final String imagePathForDrawer;
//   final String textPathForDrawer;
//   final String navigationPathForDrawer;
//
//    DrawerSingleItemsCreate({Key? key, required this.imagePathForDrawer, required this.textPathForDrawer, required this.navigationPathForDrawer}) : super(key: key);
//   @override
//   _DrawerSingleItemsCreateState createState() => _DrawerSingleItemsCreateState();
// }
//
// class _DrawerSingleItemsCreateState extends State<DrawerSingleItemsCreate> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: widget.color! ? buttonColor : Colors.black,
//       child: ListTile(
//         dense:true,
//         horizontalTitleGap: 2.0,
//         // minLeadingWidth: 2.0,
//         leading: Image.asset(widget.imagePathForDrawer, height:30.0,),
//         title: Text(widget.textPathForDrawer,style: TextStyle(color: Colors.white,fontFamily: textFontFamily,fontSize: 15.0),),
//         onTap: () {
//
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => SecondRoute()),
//           );
//         },
//       ),
//     );
//   }
// }

