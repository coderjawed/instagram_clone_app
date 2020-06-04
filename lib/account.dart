import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   //backgroundColor: Colors.black,
      //   elevation: 2.0,
      //   title: Text('data'),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        child: CircleAvatar(
                            backgroundImage: NetworkImage(
                          'https://img.jakpost.net/c/2019/05/20/2019_05_20_72607_1558317268._large.jpg',
                        )),
                      ),
                      Positioned(
                        bottom: 0.0,
                        right: 0.0,
                        height: 30,
                        width: 30,
                        child: CircleAvatar(
                          backgroundColor: Colors.blueAccent,
                          radius: 10.0,
                          child: Icon(
                            Icons.add,
                            size: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                  '820',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Post',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  '1.9K',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Follower',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  '50',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Following',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                )
                              ],
                            ),
                          ],
                        ),
                        // SizedBox(
                        //   height: 15.0,
                        // ),
                        // Row(
                        //   children: <Widget>[
                        //     Expanded(
                        //         child: Material(
                        //       elevation: 8.0,
                        //       color: Colors.white70,
                        //       borderRadius:
                        //           BorderRadius.all(Radius.circular(5.0),),
                        //       child: MaterialButton(

                        //         onPressed: () {},
                        //         child: Text('Edit Profile'),
                        //       ),
                        //     ))
                        //   ],
                        // )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              alignment: Alignment.topLeft,
              child: Text('Keanu Reeves'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Material(
                    elevation: 2.0,
                    color: Colors.white70,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text('Edit Profile'),
                    ),
                  ))
                ],
              ),
            ),
            DefaultTabController(
              length: 2,
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: BorderDirectional(
                        bottom: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: SafeArea(
                      child: Column(
                        children: <Widget>[
                          TabBar(indicatorColor: Colors.grey, tabs: <Widget>[
                            Tab(
                              icon: Icon(
                                Icons.grid_on,
                                color: Colors.black,
                              ),
                            ),
                            Tab(
                              icon: Icon(
                                Icons.account_box,
                                color: Colors.black,
                              ),
                            )
                          ])
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: TabBarView(children: <Widget>[
                      GridView.count(
                        crossAxisCount: 3,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Image(
                              width: double.infinity,
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://i.ytimg.com/vi/L_fakhHTVJs/maxresdefault.jpg'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Image(
                              width: double.infinity,
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://basicknowledgecouk.files.wordpress.com/2018/07/pexels-photo-733872.jpeg'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Image(
                              width: double.infinity,
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://img.jakpost.net/c/2019/05/20/2019_05_20_72607_1558317268._large.jpg'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Image(
                              width: double.infinity,
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://i.ytimg.com/vi/L_fakhHTVJs/maxresdefault.jpg'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Image(
                              width: double.infinity,
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://basicknowledgecouk.files.wordpress.com/2018/07/pexels-photo-733872.jpeg'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Image(
                              width: double.infinity,
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://img.jakpost.net/c/2019/05/20/2019_05_20_72607_1558317268._large.jpg'),
                            ),
                          ),
                        ],
                      ),
                      GridView.count(
                        crossAxisCount: 3,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Image(
                              width: double.infinity,
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://i.ytimg.com/vi/L_fakhHTVJs/maxresdefault.jpg'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Image(
                              width: double.infinity,
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://basicknowledgecouk.files.wordpress.com/2018/07/pexels-photo-733872.jpeg'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Image(
                              width: double.infinity,
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://img.jakpost.net/c/2019/05/20/2019_05_20_72607_1558317268._large.jpg'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Image(
                              width: double.infinity,
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://i.ytimg.com/vi/L_fakhHTVJs/maxresdefault.jpg'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Image(
                              width: double.infinity,
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://basicknowledgecouk.files.wordpress.com/2018/07/pexels-photo-733872.jpeg'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Image(
                              width: double.infinity,
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://img.jakpost.net/c/2019/05/20/2019_05_20_72607_1558317268._large.jpg'),
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
