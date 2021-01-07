import 'package:flutter/material.dart';
import 'package:new_app1/models/nav-menu.dart';
import 'package:new_app1/screens/facebook.dart';
import 'package:new_app1/screens/home_screen.dart';
import 'package:new_app1/screens/headline-news.dart';
import 'package:new_app1/screens/twitter-feed.dart';
import 'package:new_app1/screens/instagram-feed.dart';


class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  List<NavMenuItem> navigationMenu=[
    NavMenuItem( "Explore" ,() => HomeScreen()),
    NavMenuItem("title" , () => HeadlineNews()),
    NavMenuItem("twitter feeds ", ()=>TwitterFeed()),
    NavMenuItem('instagram feeds', ()=> InstagramFeed()),
    NavMenuItem('Facebook Feeds', ()=> FacebookFeeds()),
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Padding(
        padding: EdgeInsets.only(top: 75 , left: 20),
        child: ListView.builder(itemBuilder: (context ,index){
          return Padding(
            padding: EdgeInsets.all(4),
            child: ListTile(
               title: Text(
                 navigationMenu[index].title,
                 style: TextStyle(fontSize: 20.0,
                 fontWeight: FontWeight.w600),
               ),
               trailing: Icon(Icons.chevron_right,
               color:Colors.grey,),
              onTap: (){
                 Navigator.pop(context);
                 Navigator.push(context, MaterialPageRoute(builder: (context){
                   return navigationMenu[index].destination();
                 }),);
              },
            ),
          );
        },itemCount:navigationMenu.length ,),
      )
    );
  }
}

