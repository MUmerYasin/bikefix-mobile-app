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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicColors.background,
      appBar:AppBar(
        backgroundColor: NeumorphicColors.background,
        elevation: 0,
        title: Text('Choose Bike Brand',style: TextStyle(color: Colors.black),),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,),
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
              padding: const EdgeInsets.only(top: 18.0),
              child: SizedBox(
                height: 400,
                width: 330,
                child: GridView.count(crossAxisCount: 3,crossAxisSpacing:15,mainAxisSpacing:25,children: [
                  CustomCard(text: 'KTM', imagepath: 'bike/ktm_logo.png'),
                  CustomCard(text: 'TVS', imagepath: 'bike/tvs_logo.png'),
                  CustomCard(text: 'Bajaj', imagepath: 'bike/bajaj_logo.png'),
                  CustomCard(text: 'Royal enfield', imagepath: 'bike/royal_enfield_logo.png'),
                  CustomCard(text: 'KTM', imagepath: 'bike/ktm_logo.png'),
                  CustomCard(text: 'TVS', imagepath: 'bike/tvs_logo.png'),
                  CustomCard(text: 'TVS', imagepath: 'bike/tvs_logo.png'),
                  CustomCard(text: 'Bajaj', imagepath: 'bike/bajaj_logo.png'),
                  CustomCard(text: 'Royal enfield', imagepath: 'bike/royal_enfield_logo.png')
                ],),
              ),
            ),

            SingleChildScrollView(
              child: SizedBox(
                height: 50,
                child:  ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Sell_Your_Bike()));
                  },style: ElevatedButton.styleFrom(shadowColor: Color(0xfff93527),primary: small),child: Text(' Proceed ',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 19),),
                ),
              ),
            ),


          ],
        )
      ),
    );
  }
}

