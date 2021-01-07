import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
class Favourties extends StatefulWidget {
  @override
  _FavourtiesState createState() => _FavourtiesState();
}

class _FavourtiesState extends State<Favourties> {
  List<Color> colorsList =[
    Colors.red ,
    Colors.blue,
    Colors.orange,
    Colors.teal,
    Colors.brown,
    Colors.yellowAccent,
  ];

  Random random = Random();

  Color _getRandomcolor(){
    return colorsList[random.nextInt(colorsList.length)];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context , position){
        return Column(
            children: <Widget>[
              _authorRow(),

            ],
        );
      },itemCount: 20,);

  }

  Widget _authorRow() {
    return Card(
      child:Padding(
        padding: EdgeInsets.only(left: 10),
        child: Column(
          children: <Widget>[
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               Row(
                 children: <Widget>[
                   Container(
                     decoration:BoxDecoration(
                       image: DecorationImage(
                         image: ExactAssetImage('assets/whatsnew.jpg'),
                         fit: BoxFit.cover,
                       ),
                       shape: BoxShape.circle,
                     ),
                     width: 50,
                     height: 50,
                     margin: EdgeInsets.only(right:16.0),
                   ),
                   // SizedBox(width: 16,), same with margin but out side ),

                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,

                     children: <Widget>[
                       Text('Michael Adams',style: TextStyle(
                         color: Colors.grey,
                       ),
                       ),
                        SizedBox(height: 8,),
                       Row(
                         children: <Widget>[
                           Text('15 Mins.',style: TextStyle(
                             color: Colors.grey,
                           ),),
                           Text('Life Style',
                             style: TextStyle(color: _getRandomcolor()),),
                         ],
                       ),
                     ],
                   ),
                   // SizedBox(width: 160,),

                 ],

               ),
               IconButton(icon:Icon(
                   Icons.bookmark_border),
                   onPressed:(){},
                  color: Colors.grey, )
             ],

           ),
            SizedBox(height: 15,),
            _newsItemRow(),
        ],
        ),
      ),

    );

  }
 Widget _newsItemRow(){
    return Row(
      children: <Widget>[
         Container(
           decoration:BoxDecoration(
             image: DecorationImage(
               image: ExactAssetImage('assets/whatsnew.jpg'),
               fit: BoxFit.cover,
             )
           ) ,
           width: 124,
           height: 124,
           margin: EdgeInsets.only(right: 10),
         ),
        Expanded( // to organize the rest space
          child: Column(
            children: <Widget>[
              Text('Tech Tent : Old phone and safe social',
              style: TextStyle( fontSize: 18 ,
                  fontWeight:FontWeight.w600),),
              Text('we also talk about the future of work as the robots'
                  'advance and we ask whether a retro phone',
              style: TextStyle(
                color:Colors.grey,
                fontSize: 16.0,
                height: 1.5,
              ),),
            ],
          ),
        ),
      ],
    );
 }

}
