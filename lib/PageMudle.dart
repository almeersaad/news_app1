import 'package:flutter/cupertino.dart';

class PageModel{
  String _title;
  IconData _icon;
  String _image;
  String _underTitle;

  PageModel(this._title, this._icon, this._image, this._underTitle);

  String get underTitle {
    return _underTitle;
  }

  String get image => _image;

  IconData get icon => _icon;

  String get title => _title;

  set title(String value) {
   _title = 'Saad';
  }
}