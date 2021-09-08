import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
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

  TextEditingController dateinput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: NeumorphicColors.background,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Row(
            children: [appsign()],
          ),
        ),
        elevation: 0,
        backgroundColor: NeumorphicColors.background,
        title: Text(''),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: thiskey,
            child: Column(
              children: [
                Image.asset('assets/icons/logo.png',width: 120,height: 120),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: myTextField(text: 'Name', validator: (value){
                    if (value!.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar
                        (SnackBar(backgroundColor:Colors.red,behavior:SnackBarBehavior.floating,padding:EdgeInsets.all(8),content: Text('Name Field is Required')));
                    }

                  }, read: false,),
                ),

                Padding(
                  padding: const EdgeInsets.all(0),
                  child: myTextField(text: 'Email', validator: (value){
                    if (value!.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor:Colors.pinkAccent,behavior
                          :SnackBarBehavior.floating,padding:EdgeInsets.all(5),content:
                      (Text('Email Field is Required'))));
                    }
                  }, read: false,),
                ),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width/2,
                        child: InkWell(
                          onTap: ()async{
                            var datepick = await showDatePicker(context: context,
                                initialDate: new DateTime.now(), firstDate: new DateTime(1900), lastDate: new DateTime(2100),

                              
                            );
                            if(datepick!=null && datepick!=birthDate){
                              setState(() {
                                birthDate = datepick;
                                isDateSelected = true;
                                birthDateInString = "${birthDate.month}/${birthDate.day}/${birthDate.year}";
                              });

                            }



                          },
                          child: myTextField(text: 'DOB', validator: (value){
                            if (value!.isEmpty){
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor:Colors.greenAccent,
                                  behavior:SnackBarBehavior.floating,
                                  content: Text('Select Your Date of Birth')));
                            }
                          },keyboardType: TextInputType.number, read: true,controller:dateinput,
                            onTap: ()async{
                            DateTime? pickedDate = await showDatePicker(
                                context: context, initialDate: DateTime.now(),
                                firstDate: DateTime(1996), //DateTime.now() - not to allow to choose before today.
                                lastDate: DateTime(2101)
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
                          },),
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
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
                  padding: const EdgeInsets.all(0),
                  child: myTextField(text: 'Phone Number', validator: (value){
                    if (value!.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor:Colors.orangeAccent,
                          behavior:SnackBarBehavior.floating,padding:EdgeInsets.all(8),
                          content: Text('Phone Number is Required')));
                    }
                  }, read: false,),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0,top: 15,left: 15,bottom: 15),
                  child: mybutton(onpress: (){
                    validated();
                  },text: 'Sign up',)
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
      ),
    );
  }
}
