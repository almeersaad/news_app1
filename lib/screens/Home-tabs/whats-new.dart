import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class WhatsNews extends StatefulWidget {
  @override
  _WhatsNewsState createState() => _WhatsNewsState();
}

class _WhatsNewsState extends State<WhatsNews> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( // for scrolling or extended screen
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // put it for text(Top Stories)
        children: <Widget>[
          _drewHeader(),
          _drawTopStories(),
        ],
      ),
    );
  }

  Widget _drewHeader() {
    TextStyle _headerTitle = TextStyle(
        color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600);
    var _headerDescription = TextStyle(
      color: Colors.white,
      fontSize: 18,
    );
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: ExactAssetImage('assets/whatsnew.jpg'),
        fit: BoxFit.cover,
      )),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 40, left: 40),
              child: Text(
                ' How to terriers & Royals Gatecrashed final',
                style: _headerTitle,
                textAlign: TextAlign.center, // make the text in center
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: Text(
                'Lorem ipsum dolor sit amet consectetur Home screen for mobile ',
                style: _headerDescription,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawTopStories() {
    return Container(
      color: Colors.grey.shade200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // for top Stories
        //mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 10),
            child: _drawSectionTitle('Top Stories'),
          ),
          Padding(
            padding: const EdgeInsets.all(6),
            child: Card(
              child: Column(
                children: <Widget>[
                  // _firstSingleRow(),// same this code with different way
                  _drawSingleRow(),
                  _drawDivider(), // for line
                  _drawSingleRow(),
                  _drawDivider(),
                  _drawSingleRow(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _drawSectionTitle('recent Updates'),
                _drawRecentUpdateCard(Colors.red),
                _drawRecentUpdateCard(Colors.teal),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          ),
        ],
      ),
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

  Widget _drawDivider() => Container(
        height: 1,
        width: double.infinity,
        color: Colors.grey.shade200,
      );

  Widget _firstSingleRow() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            child: Image(
              image: ExactAssetImage('assets/whatsnew.jpg'),
              fit: BoxFit.cover,
            ),
            width: 100,
            height: 100,
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Text(
                  'The world Globle Waring Annual summit',
                  maxLines: 2,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceBetween, // same with SizedBox(width: 50,),

                  children: <Widget>[
                    Text(
                      'Michael Adams',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.timer),
                        Text('15 Mins'),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _drawSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
          color: Colors.grey.shade700,
          fontWeight: FontWeight.w500,
          fontSize: 16),
    );
  }

  Widget _drawRecentUpdateCard(Color color) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: ExactAssetImage('assets/whatsnew.jpg'),
                fit: BoxFit.cover,
              )),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 4, right: 24, left: 15),
              child: Container(
                padding:
                    EdgeInsets.only(top: 4, bottom: 4, right: 25, left: 25),
                child: Text(
                  'SPORT',
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(5)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, top: 6, bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Vettel is ferrari number one Hamilton ',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.timer,
                        size: 14,
                      ),
                      Text(
                        '15 Min',
                        style: TextStyle(fontSize: 12,color: Colors.grey.shade600),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
