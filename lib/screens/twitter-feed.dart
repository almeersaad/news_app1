import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app1/shared-ui/navigation-drawer.dart';
class TwitterFeed extends StatefulWidget {
  @override
  _TwitterFeedState createState() => _TwitterFeedState();
}

class _TwitterFeedState extends State<TwitterFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Twitter Feed'),
        centerTitle:false,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){
    }),
        ]
      ),
      drawer:NavigationDrawer(),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemBuilder:(context,index){
         return Card(
           child:Column(
             children: <Widget>[
               _cardHeader(),
               _cardBody(),
             _drawDivider(),
               _cardFooter(),
             ],
           ),
         );
      } ,itemCount: 20,),
    );



  }

  Widget _cardHeader(){
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16),
          child: CircleAvatar(
            backgroundImage:ExactAssetImage ('assets/whatsnew.jpg'),
            radius: 24,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text('Christina Meyers',style: TextStyle(
                    fontSize:20.0, fontWeight: FontWeight.w600),),
                Text('@yahoo.com'),
              ],

            ),
            SizedBox(height: 10,),
            Text('Mon , 10 ,August 2020 .01:28 .AM',style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey.shade500
            ),),
          ],
        ),
      ],
    );
  }

  Widget _cardBody(){
    return Padding(
      padding: const EdgeInsets.only(left: 16,bottom: 20),
      child: Text('we also talk about the future of work as the robots advance and we ask whether a retro phone',
        style: TextStyle(
          color:Colors.grey.shade800,
          fontSize: 16.0,
          height: 1.5,
          fontWeight: FontWeight.w600,
        ),),
    );

  }

  Widget _cardFooter(){
    return Padding(

      padding: const EdgeInsets.all(8),
      child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              IconButton(icon:Icon(Icons.repeat,
                color:Colors.orangeAccent,
                size: 25,  ), onPressed: (){}),
              Text('24'),
              //SizedBox(width: 160.0,),
            ],
          ),

          Row(
            children: <Widget>[
              FlatButton(onPressed: (){}, child: Text('SHARE',style: TextStyle(
                  color: Colors.orangeAccent,
                  fontSize:16.0,
                  fontWeight: FontWeight.w800
              ),),),
              FlatButton(onPressed: (){}, child: Text('OPEN',style: TextStyle(
                  color: Colors.orangeAccent,
                  fontSize:16.0,
                  fontWeight: FontWeight.w800
              ),),)
            ],
          )



        ],
      ),
    );
  }

  Widget _drawDivider() {
    return Container(
      height: 1,
      color: Colors.grey.shade300,

    );
  }

}
