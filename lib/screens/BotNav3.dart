import 'package:flutter/material.dart';
import 'package:newsapp/models/news.dart';
import 'package:newsapp/utils/appWidget.dart';
import 'package:newsapp/utils/colors.dart';
import 'package:newsapp/utils/constants.dart';

class BotNav3 extends StatefulWidget {
  @override
  _BotNav3State createState() => _BotNav3State();
}

class _BotNav3State extends State<BotNav3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: GridView.count(
        primary: false,shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 2,
        childAspectRatio: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height /1.8),
        padding: const EdgeInsets.only(top:20,right: 10,left: 10),
        children: newsList.map((e) => new  Container(
           margin: const EdgeInsets.only(bottom:5),
            width: 0.4*MediaQuery.of(context).size.width,
            decoration: boxDecoration(radius: 15,fillColor: Colors.transparent),
            child: new Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
               Container(height: 150,
               width: 0.45*MediaQuery.of(context).size.width,
               decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(13)),
                  image: DecorationImage(image: AssetImage(e.imageUrl,),fit: BoxFit.cover)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: c_white.withOpacity(0.2),
                          child: Icon(Icons.favorite_sharp,color: Colors.red,)),
                          
                      ],
                    ),
                  ),
                  
              ),

               Container(width: 0.35*MediaQuery.of(context).size.width,
               padding: const EdgeInsets.only(left:10),
              child: text(e.desc,textColor: c_black,fontWeight: FontWeight.bold,fontSize: textSizeLargeMedium,maxLine: 2),),
        
            ],),

          )
        ).toList()),
    );
  }
}