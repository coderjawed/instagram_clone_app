import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'fullscreen_image.dart';

class GalleryPage extends StatefulWidget {
  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  final List<String> _wallpaper = [
    'https://img.jakpost.net/c/2019/05/20/2019_05_20_72607_1558317268._large.jpg',
    'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://basicknowledgecouk.files.wordpress.com/2018/07/pexels-photo-733872.jpeg',
    'https://www.mantelligence.com/wp-content/uploads/2017/10/Questions-To-Ask-Smile-or-eyes.jpg',
    'https://i.ytimg.com/vi/L_fakhHTVJs/maxresdefault.jpg',
    'https://pm1.narvii.com/7196/a02260a00be6319d0255cc05fbdad4d463733382r1-682-1024v2_uhq.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _wallpaper != null
            ? new StaggeredGridView.countBuilder(
                padding: const EdgeInsets.all(8.0),
                crossAxisCount: 4,
                itemCount: _wallpaper.length,
                itemBuilder: (context, index) {
                  String imgurl = _wallpaper[index];
                  return Material(
                    elevation: 8.0,
                    borderRadius: new BorderRadius.all(
                      new Radius.circular(8.0),
                    ),
                    child: new InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FullsreenImage(imgurl)),
                      ),
                      child: new Hero(
                          tag: imgurl,
                          child: new FadeInImage(
                            placeholder:
                                new AssetImage('assets/images/placeholder.jpg'),
                            image: new NetworkImage(imgurl),
                            fit: BoxFit.cover,
                          )),
                    ),
                  );
                },
                staggeredTileBuilder: (i) =>
                    new StaggeredTile.count(2, i.isEven ? 2 : 3),
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
              )
            : new Center(
                child: new CircularProgressIndicator(),
              ));
  }
}
