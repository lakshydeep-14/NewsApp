import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:newsapp/models/newscate.dart';
import 'package:newsapp/utils/appWidget.dart';
import 'package:newsapp/utils/colors.dart';
import 'package:newsapp/utils/constants.dart';
import 'package:newsapp/utils/strings.dart';
class InsideBotNav2 extends StatefulWidget {
  final String imageUrl,title;
  const InsideBotNav2({Key key, this.imageUrl, this.title}) : super(key: key);
  
  @override
  _InsideBotNav2State createState() => _InsideBotNav2State();
}

class _InsideBotNav2State extends State<InsideBotNav2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(backgroundColor: c_white,
      elevation: 1,
      leading: GestureDetector(
        onTap: ()=>finish(context),
        child: Icon(Icons.chevron_left,color: c_black,size: 40,)),
      actions: [
        Icon(Icons.favorite_outline,color: c_black,size: 30,),
        SizedBox(width:20),
        Icon(Icons.share_sharp,color: c_black,size: 30,),
        SizedBox(width:20),

      ],
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20,10,15,0),
        children: [
           Container(height: 200,width: double.infinity,
             margin: const EdgeInsets.only(bottom:10,),
            decoration: BoxDecoration(image: DecorationImage(image:AssetImage(widget.imageUrl),fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(c_black.withOpacity(0.4),BlendMode.darken), ),
            borderRadius: BorderRadius.all(Radius.circular(20))
            ),),
            text(widget.title,textColor: c_black,fontSize: textSizeLarge,fontWeight: FontWeight.w900,maxLine: 3),
            SizedBox(height:10),
            Row(
              children: [
                SizedBox(width:10),

              Row(
                children: [
                  Icon(Icons.calendar_today,color: mainColor,size: 15,),
                  SizedBox(width:5),
                  text("YY-MM-DD",fontSize: textSizeMedium,fontWeight: FontWeight.w500),
                ],
              ),
              SizedBox(width:20),
              Row(
                children: [
                  Icon(Icons.remove_red_eye,color: mainColor,size: 18,),
                  SizedBox(width:5),
                  text("0"),
                ],
              ),


            ],),

           Container(
                margin: const EdgeInsets.only(top:15,bottom: 15,left:10),
                height: 40,
                width: double.infinity,
                child: newsCate()),
                Container(height: 2,width: double.infinity,color: mainColor,),
                text(texts,maxLine: 20,fontSize: textSizeMedium)


          
        
      ],),
      
    );
  }
   Widget newsCate(){
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: newsCateList.length,
      itemBuilder: (context,i){
        return Container(
        padding: const EdgeInsets.fromLTRB(8, 0, 8,0),
        margin: const EdgeInsets.fromLTRB(0, 0, 10,0),
        decoration: boxDecoration(radius: 10,fillColor: mainColor),
        child: Center(child: text(newsCateList[i].name,textColor: c_white,fontSize: textSizeMedium,fontWeight: FontWeight.w500,isCentered: true),),
        );
      },
    );
  }
}