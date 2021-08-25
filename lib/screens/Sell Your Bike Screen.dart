import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/config.dart';

import 'CheckOut_Screen.dart';

class Sell_Your_Bike extends StatefulWidget {
  const Sell_Your_Bike({Key? key}) : super(key: key);

  @override
  _Sell_Your_BikeState createState() => _Sell_Your_BikeState();
}

class _Sell_Your_BikeState extends State<Sell_Your_Bike> {
  String drop2 = '    Brand ';
  String drop3 = '    Model ';
  String drop4 = '    Year ';
  String drop5 = '    Color';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicColors.background,
      appBar: AppBar(
        elevation: 0,
        title: Text('Sell Your Vehicle',style: TextStyle(color: Colors.black),),
        backgroundColor: NeumorphicColors.background,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CustomTextFildAndTextField(
            child: DropdownButton<String>(
                underline: SizedBox(),
            isExpanded: true,
            dropdownColor: NeumorphicColors.background,
            hint: Text(drop2),
            items: <String>['     Male', '      Female'].map((String value) {
              return DropdownMenuItem<String>(
                onTap: (){
                  setState(() {
                    drop2 = value;
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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomTextFildAndTextField(
                  child: DropdownButton<String>(
                    underline: SizedBox(),
                    dropdownColor: NeumorphicColors.background,
                    isExpanded: true,
                    hint: Text(drop3),
                    items: <String>['     Male', '      Female'].map((String value) {
                      return DropdownMenuItem<String>(
                        onTap: (){
                          setState(() {
                            drop3 = value;
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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomTextFildAndTextField(
                  child: DropdownButton<String>(
                    dropdownColor: NeumorphicColors.background,
                    underline: SizedBox(),
                    isExpanded: true,
                    hint: Text(drop4),
                    items: <String>['     Male', '      Female'].map((String value) {
                      return DropdownMenuItem<String>(
                        onTap: (){
                          setState(() {
                            drop4 = value;
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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomTextFildAndTextField(
                  child: DropdownButton<String>(
                    dropdownColor: NeumorphicColors.background,
                    underline: SizedBox(),
                    isExpanded: true,
                    hint: Text(drop5),
                    items: <String>['     Male', '      Female'].map((String value) {
                      return DropdownMenuItem<String>(
                        onTap: (){
                          setState(() {
                            drop5 = value;
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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomTextFildAndTextField(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      hintText: "Vehicle Number",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: CustomTextFildAndTextField(
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(12),
                  hintText: "Kilometer Driven",
                  border: InputBorder.none,)
                )
              ),
      ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomTextFildAndTextField(
                    child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(12),
                          hintText: "Enter Your Phone Number",
                          border: InputBorder.none,)
                    )
                ),
              ),

             Center(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Expanded(child: Center(
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: RichText(
                         text: TextSpan(
                           children: <TextSpan>[
                             TextSpan(text: "By Clicking Value My Bike you agree to our ",style: TextStyle(color: Colors.black)),
                             TextSpan(text: " \n                   Term & Conditions ",style: TextStyle(color: Colors.redAccent),)
                           ]
                         ),
                       ),
                     ),
                   ))
                 ],
               ),
             ),

              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0.0,top: 35),
                      child: InkWell(
                        highlightColor: Colors.blue.withOpacity(0.4),
                        splashColor: Colors.green.withOpacity(0.5),
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
                            child:  ElevatedButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckOut()));
                              },style: ElevatedButton.styleFrom(shadowColor: Color(0xfff93527),primary:small),child: Text(' Value My Bike ',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 19),),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ]
          ),
        )
      ),

    );
  }
}

class CustomTextFildAndTextField extends StatefulWidget {

  const CustomTextFildAndTextField({Key? key, this.child}) : super(key: key);
  final child;

  @override
  _CustomTextFildAndTextFieldState createState() => _CustomTextFildAndTextFieldState();
}

class _CustomTextFildAndTextFieldState extends State<CustomTextFildAndTextField> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Center(
          child: Column(
            children: [
              Neumorphic(
                style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),shadowLightColor: Colors.white,shadowDarkColorEmboss: Colors.black54, shadowLightColorEmboss: Colors.white,shadowDarkColor: Colors.black54,color: NeumorphicColors.background),
                child: Container(
                  height: 49,
                  child: widget.child,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

