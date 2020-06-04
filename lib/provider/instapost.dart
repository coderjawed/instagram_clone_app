

import 'package:flutter/foundation.dart';

class Instapost{
  final String profilpic;
  final String name;
  final String baner;
  final String massege;


  Instapost({this.profilpic,this.name,this.baner,this.massege});
}
class Orders with ChangeNotifier {
  List<Instapost> _stories = [];

  List<Instapost> get stories {
    return [..._stories];
  }


}

