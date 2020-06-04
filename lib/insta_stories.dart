import 'package:flutter/material.dart';

import 'provider/stories.dart';

class InstaStories extends StatelessWidget {
  //final List<Instapost> _stories=InstastoriesData;
  //final dataentry=entries.toList();
  final List<int> stoir = [];

  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        'Stories',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Row(
        children: <Widget>[
          Icon(Icons.play_arrow),
          Text(
            'Watch All',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      )
    ],
  );
  final stories = Expanded(
    child: Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: new ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) => Stack(
                alignment: Alignment.bottomRight,
                children: <Widget>[
                  Container(
                    // padding: EdgeInsets.all(10),
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      //color: const Color(0xff7c94b6),
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                        fit: BoxFit.cover,
                        image: new NetworkImage(
                          'https://img.jakpost.net/c/2019/05/20/2019_05_20_72607_1558317268._large.jpg',
                        ),
                      ),
                      //borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: new Border.all(
                        color: Colors.red,
                        width: 2.0,
                      ),
                      // gradient: RadialGradient(
                      //     colors: [Colors.black, Colors.blue],
                      //     //focal: Alignment.centerLeft,
                      //     radius: 5.0)
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  ),
                  index == 0
                      ? Positioned(
                          right: 10.0,
                          child: CircleAvatar(
                            backgroundColor: Colors.blueAccent,
                            radius: 10.0,
                            child: Icon(
                              Icons.add,
                              size: 14.0,
                              color: Colors.white,
                            ),
                          ),
                        )
                      : Container()
                ],
              )),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        //mainAxisSize: MainAxisSize.min,
        children: <Widget>[topText, ToopStories()],
      ),
    );
  }
}

class ToopStories extends StatelessWidget {
  final List<Instastories> _stories = [
    Instastories(
        profilpic:
            'https://img.jakpost.net/c/2019/05/20/2019_05_20_72607_1558317268._large.jpg',
        name: 'Rohit'),
    Instastories(
        profilpic:
            'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        name: 'Julia Roberts'),
    Instastories(
        profilpic:
            'https://basicknowledgecouk.files.wordpress.com/2018/07/pexels-photo-733872.jpeg',
        name: 'Kaily'),
    Instastories(
        profilpic:
            'https://www.mantelligence.com/wp-content/uploads/2017/10/Questions-To-Ask-Smile-or-eyes.jpg',
        name: 'Kabir'),
    Instastories(
        profilpic: 'https://i.ytimg.com/vi/L_fakhHTVJs/maxresdefault.jpg',
        name: 'Kanella'),
    Instastories(
        profilpic:
            'https://pm1.narvii.com/7196/a02260a00be6319d0255cc05fbdad4d463733382r1-682-1024v2_uhq.jpg',
        name: 'Donald'),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(top: 10.0),
        child: new ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _stories.length,
            itemBuilder: (context, index) => Stack(
                  alignment: Alignment.bottomRight,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          child: CircleAvatar(
                            backgroundImage:
                                NetworkImage(_stories[index].profilpic),
                          ),
                          padding: EdgeInsets.all(3),
                          width: 60.0,
                          height: 60.0,
                          //padding: EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              stops: [0.1, 0.1, 0.5, 0.8],
                              colors: [
                                Color.fromRGBO(79, 91, 213, 1),
                                Color.fromRGBO(150, 47, 191, 1),
                                Color.fromRGBO(214, 41, 118, 1),
                                Color.fromRGBO(250, 126, 30, 1),
                              ],
                            ),
                            //color: const Color(0xff7c94b6),
                            shape: BoxShape.circle,
                           
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Center(
                          child: SizedBox(
                            height: 15,
                            child: Text(
                              _stories[index].name,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    index == 0
                        ? Positioned(
                            right: 10.0,
                            bottom: 19.0,
                            child: CircleAvatar(
                              backgroundColor: Colors.blueAccent,
                              radius: 10.0,
                              child: Icon(
                                Icons.add,
                                size: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          )
                        : Container()
                  ],
                )),
      ),
    );
  }
}
