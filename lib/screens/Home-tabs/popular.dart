import 'package:flutter/material.dart';

class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context , z){
        return Stack(
            children: <Widget>[
              _drawSingleRow(),
            ],
        );
      },itemCount: 10,
    );
  }
  Widget _drawSingleRow() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: <Widget>[
          SizedBox(
            child: Image(
              image: ExactAssetImage('assets/whatsnew.jpg'),
              fit: BoxFit.cover,
            ),
            width: 100,
            height: 100,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      right: 15, left: 15, top: 0, bottom: 20),
                  child: Text(
                    'The world Globle Waring Annual summit',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14, top: 6),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Michael Adams',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Icon(Icons.timer),
                      Text('15 Mins')
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}


