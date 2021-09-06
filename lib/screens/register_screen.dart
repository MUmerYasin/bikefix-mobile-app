import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:two_wheel_vehicle/screens/otp_verify_screen.dart';

import '../config.dart';
import '../widgets.dart';
import 'navigator_helper.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  GlobalKey <FormState> thiskey = GlobalKey <FormState>();

  void validated (){
    if (thiskey.currentState!.validate()){
      print ('ok');
    }else{
      print ('not');
    }
  }

  String selectoption = '    Gender';
  String initValue="Select your Birth Date";
  bool isDateSelected= false;
  late DateTime birthDate; // instance of DateTime
  late String birthDateInString;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: NeumorphicColors.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: NeumorphicColors.background,
        title: Text(''),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Image.asset('assets/icons/logo.png',width: 120,height: 120),
              Padding(
                padding: const EdgeInsets.only(right: 15.0,top: 15,left: 15,bottom: 15),
                child: myTextField(text: 'Name', validator: (value){
                }),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 15.0,top: 15,left: 15,bottom: 15),
                child: myTextField(text: 'Email', validator: (value){
                }),
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width/2.3,
                      child: InkWell(
                        onTap: ()async{
                          var datepick = await showDatePicker(context: context,
                              initialDate: new DateTime.now(), firstDate: new DateTime(1900), lastDate: new DateTime(2100));
                          if(datepick!=null && datepick!=birthDate){
                            setState(() {
                              birthDate = datepick;
                              isDateSelected = true;
                              birthDateInString = "${birthDate.month}/${birthDate.day}/${birthDate.year}";
                            });

                          }

                        },
                        child: myTextField(text: 'DOB', validator: (value){
                        },keyboardType: TextInputType.number,),
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width/2.3,
                      child: Neumorphic(
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
                  ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0,top: 15,left: 15,bottom: 15),
                child: myTextField(text: 'Phone Number', validator: (value){
                }),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0,top: 15,left: 15,bottom: 15),
                child: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.redAccent, spreadRadius:3, blurRadius: 7)
                      ],
                      borderRadius: BorderRadius.circular(14)
                  ),

                  child: SizedBox(
                    height: 50,
                    width: 170,
                    child:  ElevatedButton(
                      onPressed: (){
                      },style: ElevatedButton.styleFrom(shadowColor: Color(0xfff93527),primary: small),child:
                    Text(' Sign up ',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 19),),
                    ),
                  ),
                ),
              ),

              RichText(text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'If already user,',style: TextStyle(
                    color: Colors.black,fontWeight: FontWeight.w700
                  )
                  ),
                  TextSpan( text: ' Log In',style: TextStyle(color: Colors.red,fontWeight:
                  FontWeight.w700),recognizer: TapGestureRecognizer()..onTap = (){
                    setState(() {
                      Navigator.push(context, CupertinoPageRoute(builder: (context)=>OTPScreen()));
                    });
                  })
                ]
              ))


            ],
          ),
        ),
      ),
    );
  }
}
