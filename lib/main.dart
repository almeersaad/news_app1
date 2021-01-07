import 'package:flutter/material.dart';
import 'package:new_app1/utilitiy/app-theme.dart';
import 'screens/OnBording.dart';
import 'screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();// just to avoid mistake
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool seen = prefs.getBool('seen');
  Widget _screen;
  if(seen == null|| seen == false ){
    _screen = OnBoarding();
  } else {
    _screen = HomeScreen();
  }

  runApp(App1(_screen));
}

class App1 extends StatelessWidget {
  final Widget _screen;
  App1(this._screen);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,// just remove line in Above
       theme: AppTheme.appth,

      home:_screen,// it was OnBording()
    );

  }
}


