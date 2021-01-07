import 'package:flutter/material.dart';
import 'package:new_app1/shared-ui/navigation-drawer.dart';
class FacebookFeeds extends StatefulWidget {

  @override
  _FacebookFeedsState createState() => _FacebookFeedsState();
}

class _FacebookFeedsState extends State<FacebookFeeds> {

  TextStyle _hashTagstyle = TextStyle(
    color: Colors.orange,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Facebook Feeds'),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _drawHeader(),
                _drawTitle(),
                _drawHashTags(),
                _drawBody(),
                _drawFooter (),

              ],
            ),
          );
        } ,itemCount: 20,),
    );;
  }

  Widget _drawHeader() {
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
            Text('Christina Meyers',style: TextStyle(
                fontSize:20.0, fontWeight: FontWeight.w600),),
            SizedBox(height: 10,),
            Text('Mon , 10 ,August 2020 .01:28 .AM',style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey.shade500
            ),),
          ],
        ),
        Row(
          children: <Widget>[
            IconButton(icon: Icon(Icons.favorite), onPressed:() {},
              color: Colors.grey.shade400,),
            Transform.translate(
                offset: Offset(-10,0),
                child: Text('25',style: TextStyle(color: Colors.grey.shade400,),)),
          ],
        ),
      ],
    );
  }

  Widget _drawTitle() {
    return Padding(
        padding: EdgeInsets.only(bottom:8,left: 16,right: 16),
        child: Text(
          'we also talk about the future of work as the robots',
          style: TextStyle(color: Colors.grey.shade900),
        ));
  }

  Widget _drawHashTags(){
    return Wrap(  // Wrap when reach in end Line start in Auto in begin Line
      children: <Widget>[
        FlatButton(onPressed: (){} , child:Text('#Avance', style: _hashTagstyle,),),
        FlatButton(onPressed: (){} , child:Text('#Avance', style: _hashTagstyle,),),
        FlatButton(onPressed: (){} , child:Text('#Avance', style: _hashTagstyle,),),


      ],
    );
  }

  Widget _drawBody() {
    return SizedBox(
      width:double.infinity,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Image(image:ExactAssetImage('assets/whatsnew.jpg'),
        fit: BoxFit.cover,),
    );
  }

  Widget _drawFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        FlatButton(onPressed:(){}, child:Text('10 Omments', style: _hashTagstyle,)),
        Row(
          children: <Widget>[
            FlatButton(onPressed:(){}, child:Text('SHARE',style: _hashTagstyle,)),
            FlatButton(onPressed:(){}, child:Text('OPEN',style: _hashTagstyle,)),
          ],
        ),
      ],
    );
  }


}

