import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:two_wheel_vehicle/config.dart';

class RoundedCornerButton extends StatelessWidget {
  Function()? onPressed;
  String? child;

  RoundedCornerButton({this.onPressed, this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Neumorphic(
        style: NeumorphicStyle(
            depth: 10,
            shape: NeumorphicShape.flat,
            shadowDarkColor: Colors.black,
            shadowLightColor: Colors.white,
            shadowDarkColorEmboss: Colors.black.withOpacity(0.8)

          //  boxShape: NeumorphicBoxShape.circle(),
        ),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: buttonColor,
                textStyle: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w500,
                )),
            onPressed: onPressed,
            child: SizedBox(width: 100, child: Center(child: Text(child ?? '')))),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  String? text;

    CustomTextField({this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Neumorphic(
          style: NeumorphicStyle(
            depth: -10,
            shape: NeumorphicShape.flat,

           shadowDarkColorEmboss: Colors.black.withOpacity(0.8)
            //  boxShape: NeumorphicBoxShape.circle(),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                // border: OutlineInputBorder(),
                border: InputBorder.none,
                labelText: text,
                labelStyle: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  color: const Color(0xff828284),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  String? title;
  String? action;
  Function()? onTap;

  CustomAppBar({this.title, this.action, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
              onTap: onTap ?? () {},
              child: Image.asset('assets/icons/back_icon.png')),
          Text(
            title ?? '',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 18,
              color: const Color(0xff000000),
            ),
            textAlign: TextAlign.left,
          ),
          Text(
            action ?? '',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 18,
              color: const Color(0xff000000),
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}

class SmallRoundedCornerButton extends StatelessWidget {
  Function()? onPressed;
  String? child;
  bool? color;

  SmallRoundedCornerButton({this.onPressed, this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Neumorphic(
        style: NeumorphicStyle(
            depth: -10,
            shape: NeumorphicShape.flat,
            shadowDarkColor: Colors.black12,
            shadowLightColor: Colors.white,
            shadowDarkColorEmboss: Colors.black.withOpacity(0.8)

          //  boxShape: NeumorphicBoxShape.circle(),
        ),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: color! ? buttonColor : Colors.black,
                textStyle: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w500,
                )),
            onPressed: onPressed,
            child: Center(child: Text(child ?? ''))),
      ),
    );
  }
}

class myTextField extends StatefulWidget {

  const myTextField({Key? key, required this.text, required this.validator, this.keyboardType, this.onTap, this.controller,required this.read }) : super(key: key);
   final String? text;
   final onTap;

   final FormFieldValidator validator;
   final  keyboardType;
   final controller;
   final bool read;

  @override
  _myTextFieldState createState() => _myTextFieldState();
}

class _myTextFieldState extends State<myTextField> {
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      margin: EdgeInsets.all(15),
      style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),shadowLightColor: Colors.white,shadowDarkColorEmboss: Colors.black54, shadowLightColorEmboss: Colors.white,shadowDarkColor: Colors.black54,color: NeumorphicColors.background),
      child: Container(
        height: 50,
        child: TextFormField(
          readOnly: widget.read,
        validator: widget.validator,
          controller: widget.controller,
          onTap: (widget.onTap),
          keyboardType: widget.keyboardType,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 14,right: 14),
              border: InputBorder.none,
            hintText: widget.text

          ),
        ),
      ),
    );
  }
}

class CustomConatiner extends StatelessWidget {
  Function()? onPressed;
  String? child;
  bool? color;

  CustomConatiner({this.color,this.child,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Neumorphic(
        style: NeumorphicStyle(
          //  boxShape: NeumorphicBoxShape.circle(),
        ),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: color! ? buttonColor : custom,
                textStyle: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w500,
                )),
            onPressed: onPressed,
            child: Center(child: Text(child ?? '',style: TextStyle(color: color! ? Colors.white : Colors.black,),))),
      ),
    );
  }
}

class customTextField extends StatefulWidget {
  const customTextField({Key? key, required this.text, this.onchanged, this.keyboardType, required this.icon, this.validator, }) : super(key: key);
  final String? text;
  final  onchanged;
  final  keyboardType;
  final validator;
  final IconData icon;

  @override
  _customTextFieldState createState() => _customTextFieldState();
}

class _customTextFieldState extends State<customTextField> {
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),shadowLightColor:
      Colors.white,shadowDarkColorEmboss: Colors.black54,
          shadowLightColorEmboss: Colors.white,shadowDarkColor: Colors.black54,color:
          NeumorphicColors.background),
      child: Container(
        height: 50,
        child: TextFormField(
          validator: (widget.validator),
          onChanged: widget.onchanged,
          keyboardType: widget.keyboardType,
          decoration: InputDecoration(
             prefixIcon: Icon(widget.icon),
              border: InputBorder.none,
              hintText: widget.text
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatefulWidget {
  const CustomCard({Key? key, required this.text, required this.imagepath, required this.color,}) : super(key: key);

  final String text;
  final String imagepath;
  final bool color;

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      margin: EdgeInsets.all(8),

      style: NeumorphicStyle(depth:10,shadowLightColorEmboss: Colors.white,shadowDarkColorEmboss: 
      Colors.black45 , shadowDarkColor: Colors.black45,shadowLightColor: Colors.white),
      child: Container(
        color:  widget.color ? buttonColor : custom,
        width: 260,
        height: 290,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Image.asset(widget.imagepath),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.text,style: TextStyle(fontSize: 15),),
            ),

          ],
        ),
      ),
    );
  }
}


class Wigets extends StatefulWidget {
  const Wigets({Key? key, required this.image}) : super(key: key);
  
  final String image;
  

  @override
  _WigetsState createState() => _WigetsState();
}

class _WigetsState extends State<Wigets> {
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      margin: EdgeInsets.only(bottom: 20),
        child: Container(

          decoration: BoxDecoration(
              color: NeumorphicColors.background,
            borderRadius: BorderRadius.circular(9)
          ),

          width: 50,
          height: 50,
          child: Center(
            child: Image.asset(widget.image,width: 40,),
          )
        ),
    );
  }
}


class myWigets extends StatefulWidget {
  const myWigets({Key? key, required this.image}) : super(key: key);

  final String image;


  @override
  _myWigetsState createState() => _myWigetsState();
}

class _myWigetsState extends State<myWigets> {
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      margin: EdgeInsets.only(bottom: 20),
      child: Container(

          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.red,spreadRadius: 80)
            ],
              color: Colors.red,
              borderRadius: BorderRadius.circular(9)
          ),

          width: 50,
          height: 50,
          child: Center(
            child: Image.asset(widget.image,width: 27,color: Colors.white,),
          )
      ),
    );
  }
}

class addd extends StatefulWidget {
  const addd({Key? key}) : super(key: key);

  @override
  _adddState createState() => _adddState();
}

class _adddState extends State<addd> {
  @override
  Widget build(BuildContext context) {
    return   Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30)
          ),
          width: 35,
          height: 35,
          child: Card(
            color: NeumorphicColors.background,
            elevation: 13,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: Icon(Icons.add,size: 15,),
          )


    );
  }
}



class appsign extends StatefulWidget {
  const appsign({Key? key}) : super(key: key);

  @override
  _appsignState createState() => _appsignState();
}

class _appsignState extends State<appsign> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.pop(context);},
      child: Container(
        width: 30,
        height: 30,
        child: Card(
          color: NeumorphicColors.background,
          elevation: 11,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          child: Icon(CupertinoIcons.back,size: 17,color: Colors.black,),
        ),
      ),
    );
  }
}

class smallicons extends StatefulWidget {
  const smallicons({Key? key, required this.imagee, this.color}) : super(key: key);

  final String imagee;
  final color;

  @override
  _smalliconsState createState() => _smalliconsState();
}

class _smalliconsState extends State<smallicons> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(side: BorderSide(color: Colors.green,),borderRadius: BorderRadius.circular(20)),
      child: Container(
        width: 39,
        height: 39,

        decoration: BoxDecoration(
            color: widget.color,
          image: DecorationImage(
            image: AssetImage(widget.imagee)

          ) ,
          borderRadius: BorderRadius.circular(40)
        ),
      ),
    );
  }
}


class linee extends StatefulWidget {
  const linee({Key? key}) : super(key: key);

  @override
  _lineeState createState() => _lineeState();
}

class _lineeState extends State<linee> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.green
      ),
    );
  }
}

class shape extends StatefulWidget {
  const shape({Key? key}) : super(key: key);

  @override
  _shapeState createState() => _shapeState();
}

class _shapeState extends State<shape> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6,
      width: MediaQuery.of(context).size.width,
      child: Neumorphic(
        margin: EdgeInsets.only(right: 10,left: 10),
        style:  NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),shadowLightColor:
        Colors.white,shadowDarkColorEmboss: Colors.black54, shadowLightColorEmboss: Colors.white,
            shadowDarkColor: Colors.white,border:
          NeumorphicBorder(width: .1,color: Colors.white70,isEnabled: true),
            color:Colors.white,
            ),
        )

    );
  }
}


class highButton extends StatelessWidget {
  Function()? onPressed;
  String? child;
  bool? color;

  highButton({this.onPressed, this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Neumorphic(
        style: NeumorphicStyle(
            shadowDarkColor: Colors.black12,
            shadowLightColor: Colors.white,
            shadowDarkColorEmboss: Colors.black.withOpacity(0.8)

          //  boxShape: NeumorphicBoxShape.circle(),
        ),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: color! ? buttonColor : Colors.red,
                textStyle: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w500,
                )),
            onPressed: onPressed,
            child: Center(child: Text(child ?? ''))),
      ),
    );
  }
}

class contain extends StatefulWidget {
  const contain({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  _containState createState() => _containState();
}

class _containState extends State<contain> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 10,
      child: Image.asset(widget.image,width: 1,height: 0.2,),
      decoration: BoxDecoration(
        color: NeumorphicColors.background,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.green)
      ),
    );
  }
}












