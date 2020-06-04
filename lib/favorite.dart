import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(kToolbarHeight),
      //   child: Container(
      //     decoration: BoxDecoration(
      //         border:
      //             BorderDirectional(bottom: BorderSide(color: Colors.grey))),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25),
                child: Text(
                  'Today',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              'Julia_123',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Julia Roberts',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.grey,
                                //fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Populer',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.grey,
                                //fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            
                          ],
                        ),
                      ],
                    )),
                     Material(
                      
                       elevation: 1.0,
                       color: Colors.blueAccent,
                       borderRadius: BorderRadius.all(Radius.circular(5.0)),
                       child: MaterialButton(onPressed: (){},
                       child: Text('Follow'),),
                            ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              'Julia_123',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Julia Roberts',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.grey,
                                //fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Populer',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.grey,
                                //fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            
                          ],
                        ),
                      ],
                    )),
                     Material(
                      
                       elevation: 1.0,
                       color: Colors.blueAccent,
                       borderRadius: BorderRadius.all(Radius.circular(5.0)),
                       child: MaterialButton(onPressed: (){},
                       child: Text('Follow'),),
                            ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              'Julia_123',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Julia Roberts',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.grey,
                                //fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Populer',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.grey,
                                //fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            
                          ],
                        ),
                      ],
                    )),
                     Material(
                      
                       elevation: 1.0,
                       color: Colors.blueAccent,
                       borderRadius: BorderRadius.all(Radius.circular(5.0)),
                       child: MaterialButton(onPressed: (){},
                       child: Text('Follow'),),
                            ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              'Julia_123',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Julia Roberts',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.grey,
                                //fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Populer',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.grey,
                                //fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            
                          ],
                        ),
                      ],
                    )),
                     Material(
                      
                       elevation: 1.0,
                       color: Colors.blueAccent,
                       borderRadius: BorderRadius.all(Radius.circular(5.0)),
                       child: MaterialButton(onPressed: (){},
                       child: Text('Follow'),),
                            ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              'Julia_123',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Julia Roberts',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.grey,
                                //fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Populer',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.grey,
                                //fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            
                          ],
                        ),
                      ],
                    )),
                     Material(
                      
                       elevation: 1.0,
                       color: Colors.blueAccent,
                       borderRadius: BorderRadius.all(Radius.circular(5.0)),
                       child: MaterialButton(onPressed: (){},
                       child: Text('Follow'),),
                            ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
