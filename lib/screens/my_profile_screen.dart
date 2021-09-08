import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:intl/intl.dart';
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

 TextEditingController dateinput = TextEditingController();

 String selectoption = '    Gender';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: NeumorphicColors.background,
        appBar: AppBar(
          elevation: 0,
          actions: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: Text('Edit',style: TextStyle(color: Colors.black),),
                )
              ],
            )
          ],
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
          child: Form(
                key: key,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 48.0),
                  child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // CustomAppBar(title: 'My Profile',action: 'Edit',onTap: (){Navigator.pop(context);},),
                        Expanded(child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,

                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16.0),
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
                          myTextField(text: 'Name', validator: (value) {  }, read: false,),

                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16.0),
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
                          }, read: false,),

                          Column(
                            children: [
                             Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 20.0),
                                   child: SizedBox(width:  MediaQuery.of(context).size.width /2,
                                       child: Text('DOB',style: TextStyle(fontSize: 18),)),
                                 ),
                                 Spacer(),

                                 Padding(
                                   padding: const EdgeInsets.only(left: 0.0),
                                   child: SizedBox(width:  MediaQuery.of(context).size.width /2.3,
                                       child: Text('Gender',style: TextStyle(fontSize: 18),)),
                                 )
                               ],
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [

                                    SizedBox(
                                      width: MediaQuery.of(context).size.width /2,
                                      child: myTextField(text: '01/01/1990',keyboardType:
                                      TextInputType.number, validator: (value) {
                                        if (value!.isEmpty){
                                          return 'Select Your Date of Birth';
                                        }

                                      },
                                          controller:  dateinput,
                                          read: true,
                                          onTap: (){
                                            setState(() async {


                                              DateTime? pickedDate = await showDatePicker(
                                                  context: context, initialDate: DateTime.now(),
                                                  firstDate: DateTime(2000), //DateTime.now()// - not to allow to choose before today.
                                                  lastDate: DateTime(2101),

                                              );

                                              if(pickedDate != null ){
                                                print(pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000

                                                String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                                                print(formattedDate); //formatted date output using intl package =>  2021-03-16
//you can implement different kind of Date Format here according to your requirement


                                                setState(() {
                                                  dateinput.text = formattedDate; //set output date to TextField value.
                                                });

                                              }else{
                                                print("Date is not selected");

                                              }
                                            },
                                            );
                                          }
                                      ),

                                    ),
                                    Spacer(),
                                    SizedBox(
                                        width: MediaQuery.of(context).size.width/2.3,
                                        child: Neumorphic(
                                          margin: EdgeInsets.only(right: 30),
                                          style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context)),
                                          child: DropdownButton<String>(
                                            underline: SizedBox(),
                                            isExpanded: true,
                                            dropdownColor: NeumorphicColors.background,
                                            hint: Text(selectoption),
                                            items: <String>['    Male', '    Female','    Other'].map((String value) {
                                              return DropdownMenuItem<String>(
                                                onTap: (){
                                                  setState(() {
                                                    selectoption = value;
                                                  });
                                                },
                                                value: value,
                                                child: new Text(value),
                                              );
                                            }).toList(),
                                            onChanged: (_) {},
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              )
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 28.0),
                            child: mybutton(onpress: (){},text: 'Save',)
                          ),

                        ],))

                      ]),
                ),
              )),
        );
  }
}
