import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:newsapp/models/news.dart';
import 'package:newsapp/models/newscate.dart';
import 'package:newsapp/utils/appWidget.dart';
import 'package:newsapp/utils/colors.dart';
import 'package:newsapp/utils/constants.dart';

class BotNav1 extends StatefulWidget {
  @override
  _BotNav1State createState() => _BotNav1State();
}

class _BotNav1State extends State<BotNav1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: ListView(
        padding: const EdgeInsets.fromLTRB(15, 10, 0,0),
        children: [

              Container(height: 230,
                margin: const EdgeInsets.only(top:8,bottom: 20),
                width: double.infinity,
                child: newsContainer()),

              Row(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Container(width: 5,height: 35,color: mainColor,),
                SizedBox(width:10),
                text("Categories",textColor: c_black,fontWeight: FontWeight.bold,fontSize: textSizeLarge),
              ],),

              Container(
                margin: const EdgeInsets.only(top:15,bottom: 15,left:10),
                height: 40,
                width: double.infinity,
                child: newsCate()),


              Row(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Container(width: 5,height: 35,color: mainColor,),
                SizedBox(width:10),
                text("Trending!",textColor: c_black,fontWeight: FontWeight.bold,fontSize: textSizeLarge),
              ],),

              trendingContainer(),

              Row(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Container(width: 5,height: 35,color: mainColor,),
                SizedBox(width:10),
                text("Breaking News",textColor: c_black,fontWeight: FontWeight.bold,fontSize: textSizeLarge),
              ],),


             Container(
               padding: const EdgeInsets.only(top:20),
               height: 0.45*MediaQuery.of(context).size.height,
               child: breakingContainer()),
              


          ],),
      
    );
  }
  Widget breakingContainer(){
    return ListView.builder(
      scrollDirection:Axis.vertical,
      itemCount: newsList.length,
      primary: false,
      itemBuilder: (context,i){
        return Container(
          height: 180,
          margin: const EdgeInsets.only(right:10,left: 5,bottom: 10,top: 5),
          padding: const EdgeInsets.only(bottom: 10,top: 10,right: 5),
          width: 0.6*MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
          color: c_white,boxShadow: [BoxShadow(color: mainColor.withOpacity(0.2),offset: const Offset(2,4),blurRadius: 8)]
          
          //boxDecoration(fillColor: c_white,radius: 15,showShadow: true,shColor: mainColor.withOpacity(0.3)),
          ),child: Row(children: [
            Container(height: 140,width: 120,
            margin: const EdgeInsets.fromLTRB(20,15,20,15),
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(color:mainColor.withOpacity(0.15),offset: const Offset(2,3))],
                image: DecorationImage(image: AssetImage(newsList[i].imageUrl,),fit: BoxFit.fill),
                borderRadius: BorderRadius.all(Radius.circular(15))
                ),
            ),
           

            Expanded(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Container(width: 0.6*MediaQuery.of(context).size.width,
                  child: text(newsList[i].desc,textColor: mainColor,fontWeight: FontWeight.w900,fontSize: textSizeLargeMedium,maxLine: 2),),

                  Container(width: 0.6*MediaQuery.of(context).size.width,
                  child: text(newsList[i].desc,textColor: c_black,fontWeight: FontWeight.w700,fontSize: textSizeLargeMedium,maxLine: 2),),
                   SizedBox(height:10),
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Container(decoration: boxDecoration(fillColor: mainColor,radius: 5),
                    padding:const EdgeInsets.all(4) ,
                      child: text(newsList[i].title,textColor: c_white,fontWeight: FontWeight.w500,fontSize: textSizeSMedium,isCentered: true),),
                      SizedBox(width:20),
                    Icon(Icons.calendar_today,color: mainColor,size: 15,),
                    text("YY-MM-DD",fontSize: textSizeSmall,fontWeight: FontWeight.w500),
                    


                  ],),
                ],
              ),
            )

          ],),

        );
      });
  }
  Widget trendingContainer(){
    return GridView.count(
      primary: false,shrinkWrap: true,
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 2,
      childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height /2),
      padding: const EdgeInsets.only(top:20,right: 10,bottom: 5),
      children: newsList.map((e) => new  Container(
        height: 200,
        
         margin: const EdgeInsets.only(bottom:20),
          width: 0.4*MediaQuery.of(context).size.width,
          decoration: boxDecoration(radius: 15,fillColor: Colors.transparent),
          child: new Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Container(height: 120,decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(13)),
                image: DecorationImage(image: AssetImage(e.imageUrl,),fit: BoxFit.cover)),
            ),

             Container(width: 0.35*MediaQuery.of(context).size.width,
             padding: const EdgeInsets.only(left:10),
            child: text(e.desc,textColor: c_black,fontWeight: FontWeight.bold,fontSize: textSizeLargeMedium,maxLine: 2),),
      
          ],),

        )
      ).toList());
  }
   Widget newsContainer(){
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: newsList.length,
      itemBuilder: (context,i){
        return Container(
          height: 230,
          margin: const EdgeInsets.only(right:20,bottom: 5),
          width: 0.8*MediaQuery.of(context).size.width,
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
          color: c_white,boxShadow: [BoxShadow(color: mainColor.withOpacity(0.2),offset: const Offset(2,4),blurRadius: 8)]
          
          //boxDecoration(fillColor: c_white,radius: 15,showShadow: true,shColor: mainColor.withOpacity(0.3)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Container(height: 130,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft:Radius.circular(13),topRight: Radius.circular(13)),
              image: DecorationImage(image: AssetImage(newsList[i].imageUrl,),fit: BoxFit.fitWidth)),
              child: Align(alignment: Alignment.bottomRight,
                child: Container(decoration: boxDecoration(fillColor: mainColor,radius: 5),
                  padding:const EdgeInsets.all(4) ,
                  margin: const EdgeInsets.all(15) ,
                  child: text(newsList[i].title,textColor: c_white,fontWeight: FontWeight.w500,fontSize: textSizeSMedium,isCentered: true),),
            )),

            Container(padding: const EdgeInsets.only(left:10,bottom: 4),
            child: text(newsList[i].desc,textColor: c_black,fontWeight: FontWeight.bold,fontSize: textSizeLargeMedium,maxLine: 2),),
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
                  text(newsList[i].views),
                ],
              ),


            ],)

          ],),

        );
      });
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