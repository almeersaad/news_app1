import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:new_app1/screens/Home-tabs/favourties.dart';
import 'package:new_app1/screens/Home-tabs/popular.dart';
import 'package:new_app1/screens/Home-tabs/whats-new.dart';
import 'package:new_app1/shared-ui/navigation-drawer.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();

}

enum popOutMenu {about , contact, help , setting }
class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  TabController _TabController;
  
  @override
  void initState() {
    super.initState();
    _TabController = TabController(initialIndex: 0,length: 3, vsync: this);
  }
  @override
  void dispose() {
    _TabController.dispose(); // prevent the controller to wait and remove extra resources
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            title: Text('Explore'),
             centerTitle: false,
        actions: <Widget>[
          IconButton(icon:Icon(Icons.search), onPressed: (){}),
           _popOutMenu(context),
        ],
        bottom: TabBar(
          indicatorColor: Colors.blue[100],
          tabs:[
          Tab(text: "WHAT'S NEWS" ,),
           // Tab(icon: Icon(Icons.dialer_sip) ,),
          Tab(text: 'POPULAR' ,),
          Tab(text: 'FAVOURITES' ,),
        ],controller: _TabController,
        ),
      ),
       drawer:NavigationDrawer(),

       body: TabBarView(children: [
         WhatsNews(),
         Popular(),
         Favourties(),
       ],controller: _TabController,
    )
    );
  }

  Widget _popOutMenu( BuildContext context ) {
    return PopupMenuButton<popOutMenu>(itemBuilder:(context) {
      return [
        PopupMenuItem<popOutMenu>(
          value: popOutMenu.about,
          child: Text('About'),
        ),
        PopupMenuItem<popOutMenu>(
          value: popOutMenu.about,
          child: Text('CONTACT'),
        ),
        PopupMenuItem<popOutMenu>(
          value: popOutMenu.about,
          child: Text('HELP'),
        ),
        PopupMenuItem<popOutMenu>(
          value: popOutMenu.about,
          child: Text('SETTING'),
        ),
      ];
    } , onSelected:(popOutMenu menu){
    } , icon: Icon(Icons.more_vert),// to make icon vertical or horizontal
    );
  }

}
