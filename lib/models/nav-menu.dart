import 'package:flutter/material.dart';

class NavMenuItem {
  String title ;
  Function destination ; // can return function without body

  NavMenuItem(this.title, this.destination);
}