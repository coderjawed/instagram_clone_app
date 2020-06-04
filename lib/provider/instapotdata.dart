import 'package:flutter/material.dart';

import 'instapost.dart';

class InstastoriesData{
  List<Instapost> _items=[
    Instapost(profilpic: 'https://img.jakpost.net/c/2019/05/20/2019_05_20_72607_1558317268._large.jpg'),
    Instapost(profilpic: 'https://img.jakpost.net/c/2019/05/20/2019_05_20_72607_1558317268._large.jpg'),
    Instapost(profilpic: 'https://img.jakpost.net/c/2019/05/20/2019_05_20_72607_1558317268._large.jpg'),
    Instapost(profilpic: 'https://img.jakpost.net/c/2019/05/20/2019_05_20_72607_1558317268._large.jpg'),
    Instapost(profilpic: 'https://img.jakpost.net/c/2019/05/20/2019_05_20_72607_1558317268._large.jpg')
  ];

  List<Instapost> get items {
    // if (_showFavoritesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // }
    return [..._items];
  }
}

 