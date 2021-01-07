import 'package:flutter/material.dart';
import 'package:new_app1/screens/Home-tabs/favourties.dart';
import 'package:new_app1/screens/Home-tabs/popular.dart';
import 'package:new_app1/screens/Home-tabs/whats-new.dart';
import 'package:new_app1/shared-ui/navigation-drawer.dart';
class HeadlineNews extends StatefulWidget {
  @override
  _HeadlineNewsState createState() => _HeadlineNewsState();
}

class _HeadlineNewsState extends State<HeadlineNews>with SingleTickerProviderStateMixin {
  TabController _TabController;

  @override
  void initState() {
    super.initState();
    _TabController = TabController(initialIndex: 0,length: 3, vsync: this);
  }
  @override
  void dispose() {
    _TabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Headline News'),
          centerTitle: false,
          actions: <Widget>[
            IconButton(icon:Icon(Icons.search), onPressed: (){}),
            IconButton(icon:Icon(Icons.more_vert), onPressed: (){}),
          ],
          bottom: TabBar(
            indicatorColor: Colors.blue[100],
            tabs:[
              Tab(text: "FAVOURITES" ,),
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
}
