import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/screens/location_screen.dart';

import '../config.dart';
import '../widgets.dart';
import 'navigator_helper.dart';

class MyProfileScreen extends StatefulWidget {


  @override
  _MyProfileScreenState createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {

 GlobalKey<FormState> key = GlobalKey<FormState>();

 void confirm (){
   if (key.currentState!.validate()){
     print ('ok');
   }else{
     print('not');
   }
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: NeumorphicColors.background,
        appBar: AppBar(
          backgroundColor: NeumorphicColors.background,
          // leading: Image.asset('assets/icons/back_icon.png',fit: BoxFit.fill,),
          leading: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Row(
              children: [
                appsign()
              ],
            ),
          ),
          title: Text(
          'My Profile',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 18,
            color: const Color(0xff000000),
          ),
          textAlign: TextAlign.left,
        ),centerTitle: true,
        ),
        body: SafeArea(
          child: Container(
              padding: EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Form(
                key: key,
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CustomAppBar(title: 'My Profile',action: 'Edit',onTap: (){Navigator.pop(context);},),
                      Expanded(child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Name',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 18,
                                color: const Color(0xff000000),
                                height: 1,
                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        myTextField(text: 'Name', validator: (value) {  },),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Email',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 18,
                                color: const Color(0xff000000),
                                height: 1,
                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        myTextField(text: 'Example@gmail.com', validator: (value) { if (value!.isEmpty){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(behavior:SnackBarBehavior.floating,backgroundColor:Colors.deepOrangeAccent,content: Text('This Field is Required')));
                        }
    },),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'DOB',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 18,
                                        color: const Color(0xff000000),
                                        height: 1,
                                      ),
                                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width /3,
                                      child: myTextField(text: '01/01/1990',keyboardType: TextInputType.number, validator: (value) {  },),
                                    )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Gender',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 18,
                                        color: const Color(0xff000000),
                                        height: 1,
                                      ),
                                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                        width: MediaQuery.of(context).size.width /3,
                                        child: myTextField(text: 'Male', validator: (value) {  },),
                                      ),
                                  )
                                ],
                              ),



                            ],
                          ),
                        ),
                        RoundedCornerButton(
                          onPressed: () {
                            
                            confirm();
                            // gotoScreen(context: context,screen:LocationScreen());

                          },
                          child: 'Save',
                        ),

                      ],))

                    ]),
              )),
        ));
  }
}
