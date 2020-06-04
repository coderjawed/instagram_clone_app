import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'insta_stories.dart';
import 'provider/instapost.dart';

class InstaList extends StatelessWidget {

  final List<Instapost> _instaPost=[
    Instapost(profilpic: 'https://i.ytimg.com/vi/L_fakhHTVJs/maxresdefault.jpg',name: 'Rahul1',baner: 'https://i.pinimg.com/originals/2c/1d/55/2c1d5578da20ceabc4a28343769a5c91.jpg',massege: 'abcdef'),
    Instapost(profilpic: 'https://i.ytimg.com/vi/L_fakhHTVJs/maxresdefault.jpg',name: 'Julia Roberts',baner: 'https://pm1.narvii.com/7196/a02260a00be6319d0255cc05fbdad4d463733382r1-682-1024v2_uhq.jpg',massege: '2,162 Likes'),
    Instapost(profilpic: 'https://i.ytimg.com/vi/L_fakhHTVJs/maxresdefault.jpg',name: 'Julia Roberts',baner: 'https://data.whicdn.com/images/126780534/original.jpg',massege: '1,990 Likes'),
    Instapost(profilpic: 'https://qph.fs.quoracdn.net/main-qimg-c7a526dfad7e78f9062521efd0a3ea70-c',name: 'Kaily',baner: 'https://openimagedenoise.github.io/images/moana_16spp_oidn.jpg',massege: '3,870 Likes'),
    Instapost(profilpic: 'https://cyber-breeze.com/wp-content/uploads/2015/06/danielle-sharp.jpg',name: 'Kanella',baner: 'https://as.ftcdn.net/r/v1/pics/7b11b8176a3611dbfb25406156a6ef50cd3a5009/home/discover_collections/optimized/image-2019-10-11-11-36-27-681.jpg',massege: '1,162 Likes'),
    Instapost(profilpic: 'https://resizing.flixster.com/Leki1kMUA7i4-89QB1t1CD2jfQ4=/300x300/v1.aDs3NDY0MDtqOzE4MzE1OzEyMDA7MzgwMDsyNTM0',name: 'Abraham',baner: 'https://helpx.adobe.com/content/dam/help/en/stock/how-to/visual-reverse-image-search/jcr_content/main-pars/image/visual-reverse-image-search-v2_intro.jpg',massege: '100 Likes'),
    Instapost(profilpic: 'https://images.pexels.com/photos/736716/pexels-photo-736716.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',name: 'Basil',baner: 'https://picfiles.alphacoders.com/191/191008.jpg',massege: '5,489 Likes'),
    Instapost(profilpic: 'https://www.apa.org/images/title-transgender_tcm7-188785.jpg',name: 'Donald ',baner: 'https://images.squarespace-cdn.com/content/v1/5bf5d5da506fbea76ffa4abe/1547249524951-CQ5U440SQYT23ODKL23G/ke17ZwdGBToddI8pDm48kKAwwdAfKsTlKsCcElEApLR7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UegTYNQkRo-Jk4EWsyBNhwKrKLo5CceA1-Tdpfgyxoog5ck0MD3_q0rY3jFJjjoLbQ/yenyi.jpg',massege: '2,300 Likes'),
    Instapost(profilpic: 'https://www.westernunion.com/content/dam/wu/rmt/233107497_WU.com_LP_US_Hero_Bill_Pay_640x500_1.jpg',name: 'Ethan',baner: 'https://html5box.com/html5gallery/images/Swan_1024.jpg',massege: '262 Likes'),

    
  ];
  @override
  Widget build(BuildContext context) {
    var devicesize = MediaQuery.of(context).size;
    //final  storiesdata= Provider.of<Orders>(context);
    //final stories=storiesdata.stories;
    return ListView.builder(
      itemCount: _instaPost.length,
      itemBuilder: (context, index) => index == 0
          ? SizedBox(
              child: InstaStories(),
              height: devicesize.height * 0.22,
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                //1st Row
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 10.0, 0.0, 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: new NetworkImage(
                                    _instaPost[index].profilpic),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            _instaPost[index].name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                //2nd Row
                Flexible(
                  fit: FlexFit.loose,
                  child: Image.network(
                    _instaPost[index].baner,
                    fit: BoxFit.cover,
                  ),
                ),
                //3rd Row
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.heart),
                          SizedBox(
                            width: 16.0,
                          ),
                          Icon(FontAwesomeIcons.comment),
                          SizedBox(
                            width: 16.0,
                          ),
                          Icon(FontAwesomeIcons.paperPlane),
                        ],
                      ),
                      Icon(FontAwesomeIcons.bookmark),
                    ],
                  ),
                ),
                //4th Row
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    _instaPost[index].massege,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                //5th Row
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://img.jakpost.net/c/2019/05/20/2019_05_20_72607_1558317268._large.jpg'))),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                          child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Add a comment...'),
                      ))
                    ],
                  ),
                ),
                //6th Row
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    '1 day ago',
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
    );
  }
}
