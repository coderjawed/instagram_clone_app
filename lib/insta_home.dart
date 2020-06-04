import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'insta_body.dart';
import 'account.dart';
import 'gallery.dart';
import 'search.dart';
import 'favorite.dart';

class InstaHome extends StatefulWidget {
  @override
  _InstaHomeState createState() => _InstaHomeState();
}

class _InstaHomeState extends State<InstaHome> {
  final topbar = new AppBar(
    backgroundColor: Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: Icon(MdiIcons.cameraOutline),
    title: SizedBox(
      height: 35.0,
      child: Image.asset('assets/images/insta_logo.png'),
    ),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Icon(Icons.send),
      )
    ],
  );

  int _currentindex = 0;

  final tabs = [
    InstaBody(),
    SearchPage(),
    GalleryPage(),
    FavoritePage(),
    //GalleryPage(),
    AccountPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentindex = index;
    });
  }
void onPageChanged(int page) {
    setState(() {
      this._currentindex = page;
    });
  }
  PageController _pageController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topbar,
       body: tabs[_currentindex],
      // body: PageView(
      //   physics: NeverScrollableScrollPhysics(),
      //   controller: _pageController,
      //   onPageChanged: onPageChanged,
      //   children: <Widget>[
      //     InstaBody(),
      //     InstaBody(),
      //     InstaBody(),
      //     GalleryPage(),
      //     AccountPage(),
      //   ],
      // ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentindex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.homeOutline),
            title: Container(height: 0.0,),
            activeIcon: Icon(MdiIcons.home)
           // backgroundColor: Colors.blueAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Container(height: 0.0,),
            //backgroundColor: Colors.redAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
             title: Container(height: 0.0,),
           // backgroundColor: Colors.yellowAccent,
          ),
          BottomNavigationBarItem(
              icon: Icon(MdiIcons.heartOutline),  
              title: Container(height: 0.0,),
              activeIcon: Icon(MdiIcons.heart)
              ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.accountOutline,),
            title: Container(height: 0.0,),
            activeIcon: Icon(MdiIcons.account)
           // backgroundColor: Colors.blueAccent,
          ),
        ],
        onTap: onTabTapped,
      ),

      // bottomNavigationBar: BottomAppBar(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: <Widget>[
      //       IconButton(icon: Icon(Icons.home), onPressed: () {}),
      //       IconButton(icon: Icon(Icons.search), onPressed: () {}),
      //       IconButton(icon: Icon(Icons.add_box), onPressed: () {}),
      //       IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
      //       IconButton(icon: Icon(Icons.account_box), onPressed: () {}),
      //     ],
      //   ),
      // ),
    );
  }
}
