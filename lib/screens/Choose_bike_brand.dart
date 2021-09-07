import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/widgets.dart';

import '../config.dart';
import 'Sell Your Bike Screen.dart';

class Choose extends StatefulWidget {
  const Choose({Key? key}) : super(key: key);

  @override
  _ChooseState createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {


  int selectvalue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicColors.background,
      appBar: AppBar(
        backgroundColor: NeumorphicColors.background,
        elevation: 0,
        title: Text(
          'Choose Bike Brand',
          style: TextStyle(color: Colors.black),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Row(
            children: [appsign()],
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: customTextField(text: 'Find', icon: CupertinoIcons.search),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0,left: 5,right: 5),
            child: SizedBox(

                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,

                    children: [
                      GestureDetector(onTap: (){
                        setState(() {
                          selectvalue = 1;
                        });

                      },
                          child: CustomCard(text: 'KTM', imagepath: 'bike/ktm_logo.png',color: selectvalue == 1 ? true : false)),
                      GestureDetector(onTap: (){
                        setState(() {
                          selectvalue = 2;
                        });
                      },
                          child: CustomCard(text: 'TVS', imagepath: 'bike/tvs_logo.png', color: selectvalue == 2 ? true : false,)),
                      GestureDetector( onTap: (){
                        setState(() {
                          selectvalue = 3;

                        });
                      },
                          child: CustomCard(text: 'Bajaj', imagepath: 'bike/bajaj_logo.png', color: selectvalue == 3 ? true : false,)),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            selectvalue = 4;
                          });
                        },
                        child: CustomCard(
                            text: 'Royal enfield',
                            imagepath: 'bike/royal_enfield_logo.png', color: selectvalue == 4 ? true : false,),
                      ),
                      GestureDetector( onTap: (){
                        setState(() {
                          selectvalue = 5;
                        });
                      },
                          child: CustomCard(text: 'KTM', imagepath: 'bike/ktm_logo.png', color: selectvalue == 5 ? true : false,)),
                      GestureDetector( onTap: (){
                        setState(() {
                          selectvalue = 6;
                        });
                      },
                          child: CustomCard(text: 'TVS', imagepath: 'bike/tvs_logo.png', color: selectvalue == 6 ? true : false,)),
                      GestureDetector(onTap: (){
                        setState(() {
                          selectvalue =7;
                        });
                      },
                          child: CustomCard(text: 'TVS', imagepath: 'bike/tvs_logo.png',color: selectvalue == 7 ? true : false,)),
                      GestureDetector(
                          onTap:(){
                            setState(() {
                              selectvalue =8;
                            });
                          },child: CustomCard(text: 'Bajaj', imagepath: 'bike/bajaj_logo.png', color: selectvalue == 8 ? true : false,)),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            selectvalue =9;
                          });


                        },
                        child: CustomCard(
                            text: 'Royal enfield',
                            imagepath: 'bike/royal_enfield_logo.png', color: selectvalue == 9 ? true : false,),
                      )
                    ],
                  ),
                ),
              ),


            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => Sell_Your_Bike()));
                },
                style: ElevatedButton.styleFrom(
                    shadowColor: Color(0xfff93527), primary: small),
                child: Text(
                  ' Proceed ',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 19),
                ),
              ),
            ),

        ],
      )),
    );
  }
}
