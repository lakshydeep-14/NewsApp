import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newsapp/utils/appWidget.dart';
import 'package:newsapp/utils/colors.dart';
import 'package:newsapp/utils/constants.dart';

class BotNav4 extends StatefulWidget {
  @override
  _BotNav4State createState() => _BotNav4State();
}

class _BotNav4State extends State<BotNav4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: ListView.separated(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.only(left:20,right:20,top:10),
        itemCount: settingList.length,
        separatorBuilder: (BuildContext context, int index) => Divider(height: 3,),
        itemBuilder: (context,i){
          return Container(height: 60,
          padding: const EdgeInsets.only(left:15,top:5,bottom:5),
          child: Row(children: [
            Icon(settingList[i].iconData),
            SizedBox(width:30),
            text(settingList[i].title,textColor: c_black,fontSize: textSizeLarge)
          ],),
          );
        },


      ),
      
    );
  }
}
class Setting{
  String title;
  IconData iconData;
  Setting({this.title,this.iconData});

}
List<Setting> settingList=[
  Setting(title: "Favorites",iconData: Icons.favorite_sharp),
  Setting(title: "Dark Mode",iconData: FontAwesomeIcons.adjust),
  Setting(title: "About",iconData: Icons.info_rounded),
  Setting(title: "Privacy Policy",iconData: FontAwesomeIcons.exclamation),
  
];