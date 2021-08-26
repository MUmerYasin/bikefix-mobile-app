import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/config.dart';
import 'package:two_wheel_vehicle/screens/navigator_helper.dart';
import 'package:two_wheel_vehicle/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() =>
      _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // int _current = 0;
  // final CarouselController _controller = CarouselController();
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
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ///


              HomePageCarouselWithIndicator(),
              // Neumorphic(
              //   style: NeumorphicStyle(
              //     depth: 8,
              //     shape: NeumorphicShape.flat,
              //     shadowDarkColorEmboss: Colors.black.withOpacity(0.7),
              //     // boxShape: NeumorphicBoxShape.circle(),
              //     shadowDarkColor: Colors.black.withOpacity(0.7),
              //     shadowLightColor: Colors.white,
              //   ),
              //   child: Container(
              //     width: MediaQuery.of(context).size.width*0.9,
              //     height: 120,
              //     child: Center(
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         children: [
              //
              //
              //           CarouselSlider(
              //             carouselController: _controller,
              //             options: CarouselOptions(
              //                 height: 120.0,
              //                 autoPlay: true,
              //                 enlargeCenterPage: true,
              //                 aspectRatio: 2.0,
              //                 viewportFraction: 1.0,
              //                 onPageChanged: (index, reason) {
              //                   setState(() {
              //                     _current = index;
              //                   });
              //                 }),
              //
              //             items: imgList.map((i) {
              //               return Builder(
              //                 builder: (BuildContext context) {
              //                   return Container(
              //                       width: MediaQuery.of(context).size.width,
              //                       margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
              //                       decoration: BoxDecoration(
              //                           // color: Colors.amber
              //                       ),
              //                     child: Stack(
              //                       alignment : AlignmentDirectional.bottomEnd,
              //                       children: [
              //                       Image.asset(
              //                         i,
              //                         height: double.infinity,
              //                         width: double.infinity,
              //                         fit: BoxFit.fill,
              //                       ),
              //                         Row(
              //                           mainAxisAlignment: MainAxisAlignment.center,
              //                           crossAxisAlignment: CrossAxisAlignment.end,
              //                           children: imgList.asMap().entries.map((entry) {
              //                             return GestureDetector(
              //                               onTap: () => _controller.animateToPage(entry.key),
              //                               child: Container(
              //                                 width: 8.0,
              //                                 height: 8.0,
              //                                 margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
              //                                 decoration: BoxDecoration(
              //                                     shape: BoxShape.circle,
              //
              //                                     color: (_current == entry.key
              //                                         ? Colors.red
              //                                         : Colors.white)
              //                                         .withOpacity(_current == entry.key ? 1 : 1),),
              //
              //                                     // color: (Theme.of(context).brightness == Brightness.dark
              //                                     //     ? Colors.white
              //                                     //     : Colors.red)
              //                                     //     .withOpacity(_current == entry.key ? 0.9 : 0.4),),
              //                               ),
              //                             );
              //                           }).toList(),
              //                         ),
              //                       ],
              //                       //
              //                     ),
              //                       // Text('text $i', style: TextStyle(fontSize: 16.0),)
              //                   );
              //                 },
              //               );
              //             }).toList(),
              //           ),
              //
              //           // Row(
              //           //   mainAxisAlignment: MainAxisAlignment.center,
              //           //   children: imgList.asMap().entries.map((entry) {
              //           //     return GestureDetector(
              //           //       onTap: () => _controller.animateToPage(entry.key),
              //           //       child: Container(
              //           //         width: 12.0,
              //           //         height: 12.0,
              //           //         margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              //           //         decoration: BoxDecoration(
              //           //             shape: BoxShape.circle,
              //           //             color: (Theme.of(context).brightness == Brightness.dark
              //           //                 ? Colors.white
              //           //                 : Colors.black)
              //           //                 .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              //           //       ),
              //           //     );
              //           //   }).toList(),
              //           // ),
              //
              //           // Row(
              //           //   mainAxisAlignment: MainAxisAlignment.center,
              //           //   crossAxisAlignment: CrossAxisAlignment.center,
              //           //   children: [
              //           //     Padding(
              //           //       padding: const EdgeInsets.only(top: 16.0,),
              //           //       child: Image.asset(paymentUnsuccessfulImagePath, height:120.0,fit:BoxFit.cover ,),
              //           //     ),
              //           //   ],
              //           // ),
              //           // Row(
              //           //   mainAxisAlignment: MainAxisAlignment.center,
              //           //   crossAxisAlignment: CrossAxisAlignment.center,
              //           //   children: [
              //           //     Padding(
              //           //       padding: const EdgeInsets.all(18.0),
              //           //       child: Text(paymentUnsuccessfulText, style: TextStyle(
              //           //         fontFamily: textFontFamily,
              //           //         fontSize: 18,
              //           //         color: Colors.black,
              //           //         fontWeight: FontWeight.bold,
              //           //       ),),
              //           //     ),
              //           //   ],
              //           // ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),




            ],
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
  mainPicCarouselSliderOneImagePath,
];

/// Main Class for Making Carousel Slider
class HomePageCarouselWithIndicator extends StatefulWidget {
  const HomePageCarouselWithIndicator({Key? key}) : super(key: key);

  @override
  _HomePageCarouselWithIndicatorState createState() => _HomePageCarouselWithIndicatorState();
}

class _HomePageCarouselWithIndicatorState extends State<HomePageCarouselWithIndicator> {
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
        width: MediaQuery.of(context).size.width*0.9,
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
                        margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                        decoration: BoxDecoration(
                          // color: Colors.amber
                        ),
                        child: Stack(
                          alignment : AlignmentDirectional.bottomEnd,
                          children: [
                            Image.asset(
                              i,
                              height: double.infinity,
                              width: double.infinity,
                              fit: BoxFit.fill,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: imgList.asMap().entries.map((entry) {
                                return GestureDetector(
                                  onTap: () => _controller.animateToPage(entry.key),
                                  child: Container(
                                    width: 8.0,
                                    height: 8.0,
                                    margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,

                                      color: (_current == entry.key
                                          ? Colors.red
                                          : Colors.white)
                                          .withOpacity(_current == entry.key ? 1 : 1),),

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
