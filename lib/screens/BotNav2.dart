import 'package:flutter/material.dart';
import 'package:newsapp/models/newscate.dart';
import 'package:newsapp/utils/appWidget.dart';
import 'package:newsapp/utils/colors.dart';
import 'package:nb_utils/nb_utils.dart';
import 'InsideBotNav2.dart';

class BotNav2 extends StatefulWidget {
  @override
  _BotNav2State createState() => _BotNav2State();
}

class _BotNav2State extends State<BotNav2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: background,
      body: ListView.builder(
        padding: const EdgeInsets.only(left:10,right:10,top: 10),
        
        itemCount: newsCateList.length,
        itemBuilder: (context,i){
          return GestureDetector(
            onTap: ()=>InsideBotNav2(imageUrl:newsCateList[i].imageUrl ,title: newsCateList[i].title,).launch(context),
            child: Container(height: 150,
             margin: const EdgeInsets.only(bottom:10,),
            decoration: BoxDecoration(image: DecorationImage(image:AssetImage(newsCateList[i].imageUrl),fit: BoxFit.fitWidth,
            colorFilter: ColorFilter.mode(c_black.withOpacity(0.4),BlendMode.darken), ),
            borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Container(padding: const EdgeInsets.only(left:20,bottom:20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
              text(newsCateList[i].name,textColor: c_white,fontWeight: FontWeight.bold),
              text(newsCateList[i].articles+" articles",textColor: c_white,fontWeight: FontWeight.bold),
              
              ],),
            ),
            
            ),
          );
        },
      ),
      
    );
  }
}