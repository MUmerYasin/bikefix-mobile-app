import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:two_wheel_vehicle/config.dart';
// import 'package:two_wheel_vehicle/widgets.dart';



class ChooseBikeBrand extends StatefulWidget {
  const ChooseBikeBrand({Key? key}) : super(key: key);

  @override
  _ChooseBikeBrandState createState() => _ChooseBikeBrandState();
}

class _ChooseBikeBrandState extends State<ChooseBikeBrand> {
  // int selected = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading : true,
        elevation:0.0,
        backgroundColor: backgroundColor,
        // leading: Image.asset('assets/icons/back_icon.png',fit: BoxFit.fill,),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,),
        ),
        title: Text(
          screenTitleChooseBikeBrand,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 18,
            color: const Color(0xff000000),
          ),
          textAlign: TextAlign.left,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 65,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        depth: -6,
                        shape: NeumorphicShape.flat,
                        shadowDarkColorEmboss: Colors.black.withOpacity(0.8)
                        //  boxShape: NeumorphicBoxShape.circle(),
                        ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
                      child: TextField(

                        textAlign : TextAlign.start,
                        decoration: InputDecoration(
                          // border: OutlineInputBorder(),
                          isDense: true,                      // Added this
                          // contentPadding: EdgeInsets.symmetric(vertical:20.0, horizontal: 0.0),
                          border: InputBorder.none,
                          labelText: textFieldNameFind,
                          labelStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            color: const Color(0xff828284),
                          ),
                          icon: FaIcon(FontAwesomeIcons.search,size:15.0,),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height:MediaQuery.of(context).size.height/1.8,
                  child: GridView.count(
                    // primary: false,
                    scrollDirection : Axis.vertical,
                    shrinkWrap : true,
                    padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 8),
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    crossAxisCount: 3,
                    children: <Widget>[

                      GridViewOfChooseBikeBrandSingleItems(textShowData: gridViewChooseBikeBrandText1, imagePaths: gridViewChooseBikeBrandImagePath1),
                      GridViewOfChooseBikeBrandSingleItems(textShowData: gridViewChooseBikeBrandText2, imagePaths: gridViewChooseBikeBrandImagePath2),
                      GridViewOfChooseBikeBrandSingleItems(textShowData: gridViewChooseBikeBrandText3, imagePaths: gridViewChooseBikeBrandImagePath3),
                      GridViewOfChooseBikeBrandSingleItems(textShowData: gridViewChooseBikeBrandText4, imagePaths: gridViewChooseBikeBrandImagePath4),
                      GridViewOfChooseBikeBrandSingleItems(textShowData: gridViewChooseBikeBrandText1, imagePaths: gridViewChooseBikeBrandImagePath1),
                      GridViewOfChooseBikeBrandSingleItems(textShowData: gridViewChooseBikeBrandText2, imagePaths: gridViewChooseBikeBrandImagePath2),
                      GridViewOfChooseBikeBrandSingleItems(textShowData: gridViewChooseBikeBrandText2, imagePaths: gridViewChooseBikeBrandImagePath2),
                      GridViewOfChooseBikeBrandSingleItems(textShowData: gridViewChooseBikeBrandText3, imagePaths: gridViewChooseBikeBrandImagePath3),
                      GridViewOfChooseBikeBrandSingleItems(textShowData: gridViewChooseBikeBrandText4, imagePaths: gridViewChooseBikeBrandImagePath4),
                      GridViewOfChooseBikeBrandSingleItems(textShowData: gridViewChooseBikeBrandText1, imagePaths: gridViewChooseBikeBrandImagePath1),
                      GridViewOfChooseBikeBrandSingleItems(textShowData: gridViewChooseBikeBrandText2, imagePaths: gridViewChooseBikeBrandImagePath2),
                      GridViewOfChooseBikeBrandSingleItems(textShowData: gridViewChooseBikeBrandText3, imagePaths: gridViewChooseBikeBrandImagePath3),
                      GridViewOfChooseBikeBrandSingleItems(textShowData: gridViewChooseBikeBrandText4, imagePaths: gridViewChooseBikeBrandImagePath4),
                      GridViewOfChooseBikeBrandSingleItems(textShowData: gridViewChooseBikeBrandText1, imagePaths: gridViewChooseBikeBrandImagePath1),
                      GridViewOfChooseBikeBrandSingleItems(textShowData: gridViewChooseBikeBrandText2, imagePaths: gridViewChooseBikeBrandImagePath2),
                      GridViewOfChooseBikeBrandSingleItems(textShowData: gridViewChooseBikeBrandText2, imagePaths: gridViewChooseBikeBrandImagePath2),
                      GridViewOfChooseBikeBrandSingleItems(textShowData: gridViewChooseBikeBrandText3, imagePaths: gridViewChooseBikeBrandImagePath3),
                      GridViewOfChooseBikeBrandSingleItems(textShowData: gridViewChooseBikeBrandText4, imagePaths: gridViewChooseBikeBrandImagePath4),



                    ],
                  ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 16),
                child: SizedBox(
                  height: 50,
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        depth: 6,
                        shape: NeumorphicShape.flat,
                        shadowDarkColor: Colors.red,
                        shadowLightColor: Colors.white,
                        shadowDarkColorEmboss: Colors.black.withOpacity(0.8)

                      //  boxShape: NeumorphicBoxShape.circle(),
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: buttonColor,
                            textStyle: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 17,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w500,
                            )),
                        onPressed: (){},
                        child: SizedBox(width: 130, child: Center(child: Text(buttonNameChooseBikeBrand)))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // ),
    );
  }
}



class GridViewOfChooseBikeBrandSingleItems extends StatefulWidget {
  final String imagePaths;
  final String textShowData;

  const GridViewOfChooseBikeBrandSingleItems({Key? key, required this.textShowData, required this.imagePaths}) : super(key: key);
  @override
  _GridViewOfChooseBikeBrandSingleItemsState createState() => _GridViewOfChooseBikeBrandSingleItemsState();
}

class _GridViewOfChooseBikeBrandSingleItemsState extends State<GridViewOfChooseBikeBrandSingleItems> {
  @override
  Widget build(BuildContext context) {
    return  Neumorphic(

      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Image(image: AssetImage(widget.imagePaths),)),
           Text(widget.textShowData, style: TextStyle(fontSize: 11.0),),

        ],
      ),

    );
  }
}

