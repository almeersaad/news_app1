import 'package:flutter/material.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../PageMudle.dart';
import 'home_screen.dart';
class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {


  List<PageModel> pages; // var page;
  ValueNotifier<int> _pageViewNotifier= ValueNotifier(0); // var pageViewNotifier

  void _addPages() {
    pages = List<PageModel>();
    pages.add(PageModel(
        '1-Hi friends welcome to this applications flutter after dart good luck',
        Icons.ac_unit,
        'assets/image1.jpg', 'welcome!'));
    pages.add(PageModel(
        '2-Hi friends welcome to this applications flutter after dart good luck',
        Icons.add,
        'assets/image2.jpg', 'Good luck'));
    pages.add(PageModel(
        '3-Hi friends welcome to this applications flutter after dart good luck',
        Icons.favorite,
        'assets/image3.jpg', 'welcome app '));
    pages.add(PageModel(
        '4-Hi friends welcome to this applications flutter after dart good luck',
        Icons.translate,
        'assets/image5.jpg', 'nice'));
  }

  @override
  Widget build(BuildContext context) {
    _addPages();

    return Stack(
      children: <Widget>[
        Scaffold(
          body: PageView.builder(
            itemBuilder: (context, index) {
              return Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage(
                            pages[index].image,
                          ),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Transform
                          .translate( // this widget can change the path icon
                        child: Icon(
                          pages[index].icon,
                          size: 100,
                          color: Colors.white,
                        ),
                        offset: Offset(0, -50),
                      ),
                      Text(
                        pages[index].underTitle,
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 45, right: 45),
                        child: Text(
                          pages[index].title,
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
            itemCount: pages.length, // the length is 4 images
            onPageChanged: (index){
              _pageViewNotifier.value=index;
            },

          ),
        ),
        Transform.translate(
          offset: Offset(0, 175),
          child: Align(
            alignment: Alignment.center,
            child: (
                _displayPageIndicators(pages.length)
            ),
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 24, left: 16, right: 16),
              // space outside
              child: SizedBox(
                width: double.infinity,
                // whole widget but we have both =16 in padding
                child: RaisedButton(
                  color: Colors.red[800],
                  // disabledColor: Colors.red[800], // also this can change the Button color
                  child: Text(
                    'Get Start',
                    style: TextStyle(
                      fontSize: 20.0,
                      letterSpacing: 1.5,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                    MaterialPageRoute(
                        builder:(context){
                          _updateSeen();
                          return HomeScreen();
                        }));
                  },
                ),
              ),
            )
        )
      ],
    );
  }
    Widget _displayPageIndicators(int length) {
      return PageViewIndicator(
        pageIndexNotifier: _pageViewNotifier,
        length: length,
        normalBuilder: (animationController, index) => Circle(
          size: 8.0,
          color: Colors.grey,
        ),
        highlightedBuilder: (animationController, index) => ScaleTransition(
          scale: CurvedAnimation(
            parent: animationController,
            curve: Curves.ease,
          ),
          child: Circle(
            size: 12.0,
            color: Colors.red,
          ),
        ),
      );
    }
void _updateSeen()async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool('seen',true);
}
}
