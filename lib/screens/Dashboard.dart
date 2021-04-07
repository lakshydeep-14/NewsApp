import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:newsapp/utils/appWidget.dart';
import 'package:newsapp/utils/colors.dart';
import 'package:newsapp/utils/constants.dart';

import 'BotNav1.dart';
import 'BotNav2.dart';
import 'BotNav3.dart';
import 'BotNav4.dart';
class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var fragments;
  var fragment1=BotNav1();
  var fragment2=BotNav2();
  var fragment3=BotNav3();
  var fragment4=BotNav4();
  var titles;
  var title1="Classic Flutter News";
  var title2="Explore";
  var title3="Favorites";
  var title4="Settings";
  int selectedIndex;
  int a=0,b=1,c=2,d=3;
  @override
  void initState(){
    super.initState();
    fragments=[fragment1,fragment2,fragment3,fragment4];
    titles=[title1,title2,title3,title4];
    selectedIndex=0;
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        color: c_white,
        child: bottomBar(),
      ),
      body: fragments[selectedIndex],
      appBar: AppBar(title: text(titles[selectedIndex],textColor: c_black,fontWeight: FontWeight.w900,fontSize: textSizeLarge),
      centerTitle: true,backgroundColor: c_white,elevation: 0,),
      
    );
  }
  Widget bottomBar(){
    return Container(
       height: 60,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          GestureDetector(
            onTap: (){
              setState(() {
                selectedIndex=0;
              });
             

            },
            child:  a==selectedIndex?Container(height: 40,width: 40,
              decoration: BoxDecoration(shape: BoxShape.circle,color: c_white),
            child:Icon(FontAwesomeIcons.home,color: mainColor,),)
            :Container(height: 40,width: 40,child:Icon(FontAwesomeIcons.home,color: textSecondaryColor.withOpacity(0.4),),),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                selectedIndex=1;
              });

            },
            child: b==selectedIndex?Container(height: 40,width: 40,
              decoration: BoxDecoration(shape: BoxShape.circle,color: c_white),
            child:Icon(FontAwesomeIcons.expandArrowsAlt,color: mainColor,),)
            :Container(height: 40,width: 40,child: Icon(FontAwesomeIcons.expandArrowsAlt,color: textSecondaryColor.withOpacity(0.4),)),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                selectedIndex=2;
              });

            },
            child:  c==selectedIndex?Container(height: 40,width: 40,
              decoration: BoxDecoration(shape: BoxShape.circle,color: c_white),
            child:Icon(Icons.favorite,color: mainColor,),)
            :Container(height: 40,width: 40,child:Icon(Icons.favorite,color: textSecondaryColor.withOpacity(0.4),),)
          ),
           GestureDetector(
            onTap: (){
              setState(() {
                selectedIndex=3;
              });

            },
            child:  d==selectedIndex?Container(height: 40,width: 40,
              decoration: BoxDecoration(shape: BoxShape.circle,color: c_white),
            child:Icon(Icons.settings,color: mainColor,),)
            :Container(height: 40,width: 40,child:Icon(Icons.settings,color: textSecondaryColor.withOpacity(0.4),),)
          ),
          

      ],),);
  }
}