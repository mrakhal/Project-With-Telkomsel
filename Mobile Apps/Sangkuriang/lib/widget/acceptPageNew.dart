import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sangkuriang/Utills/globalVar.dart';
import 'swipeButton.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AcceptPages(title: 'Sangkuriang Apps'),
    );
  }
}

class AcceptPages extends StatefulWidget {
  AcceptPages({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AcceptPagesState createState() => _AcceptPagesState();
}

class _AcceptPagesState extends State<AcceptPages> {
  final String url =
      'https://cdn1.iconfinder.com/data/icons/avatars-55/100/avatar_profile_user_music_headphones_shirt_cool-512.png';
  final Color green = Color(0xFF1E8161);

  Widget _swipe(BuildContext context) {
    return Container(
      height: 70,
      width: 320,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: SwipeButton(
          thumb: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Align(
                widthFactor: 2.0,
                child: Icon(
                  Icons.chevron_right,
                  size: 50.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          content: Center(
            child: Text(
              'SWIPE RIGHT TO ACCEPT',
              style: TextStyle(color: Colors.black),
            ),
          ),
          onChanged: (result) {
            if (result == SwipePosition.SwipeRight) {
              Navigator.of(context).pushNamed('/BeforePage');
            } else {}
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      // appBar: AppBar(
      //   title: Text('Profile'),
      //   elevation: 1,
      //   backgroundColor: green,
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back_ios),
      //     onPressed: () {},
      //   ),
      //   actions: <Widget>[
      //     IconButton(
      //       icon: Icon(Icons.search),
      //       onPressed: () {},
      //     )
      //   ],
      // ),
      body: SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                top: 50,
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.0,
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(32),
                  bottomLeft: Radius.circular(32),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'STATUS',
                              style: TextStyle(
                                color: Color(0xFF00BFA5),
                                fontSize: 12.5,
                              ),
                            ),
                            Text(
                              '${Vars.status1}',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Color(0xFF00BFA5),
                          image: DecorationImage(
                            image: AssetImage('assets/avatar.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(100.0),
                          border: Border.all(
                            color: Color(0xFFF5F5F5),
                            width: 5.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'REQUEST',
                              style: TextStyle(
                                color: Color(0xFF00BFA5),
                                fontSize: 12.5,
                              ),
                            ),
                            Text(
                              '${Vars.request}',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 19,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      'ID: ${Vars.id}',
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      'WELCOME',
                      style: TextStyle(
                        color: Color(0xFFF5F5F5),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      bottom: 20,
                    ),
                    child: Text(
                      Vars.fullname,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'TIME REQUEST',
                          style: TextStyle(
                            color: Color(0xFF00BFA5),
                            fontSize: 19,
                          ),
                        ),
                        Text(
                          '${Vars.time}',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          FlatButton(
                            onPressed: () {
                              print('tap');
                              MapUtils.openRoute(
                                  -3.823216, -38.481700, -3.823216, -38.581700);
                            },
                            child: Image.asset(
                              'assets/maps.png',
                              height: 50,
                              width: 50,
                            ),
                          ),
                          Text(
                            'TRACK',
                            style: TextStyle(
                              color: Color(0xFF00BFA5),
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                      new Flexible(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xFF00BFA5),
                            border: Border.all(
                              color: Color(0xFFF5F5F5),
                              width: 5.0,
                            ),
                            borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(10.0),
                              topRight: const Radius.circular(10.0),
                              bottomLeft: const Radius.circular(10.0),
                              bottomRight: const Radius.circular(10.0),
                            ),
                          ),
                          child: Column(
                            children: <Widget>[
                              new Text(
                                'SITE : ${Vars.site}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.5,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              new Text(
                                'STATUS : ${Vars.status1}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.5,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              new Text(
                                'ALAMAT : ${Vars.alamat}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.5,
                                    fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: <Widget>[
                  //     Column(
                  //       children: <Widget>[
                  //         FlatButton(
                  //           onPressed: () {
                  //             print('prest');
                  //             MapUtils.openRoute(
                  //                 -3.823216, -38.481700, -3.823216, -38.581700);
                  //           },
                  //           padding: EdgeInsets.all(0.0),
                  //           child: Image.asset(
                  //             'assets/maps.png',
                  //             height: 50,
                  //             width: 50,
                  //           ),
                  //         ),
                  //         Text(
                  //           'TRACK',
                  //           style: TextStyle(
                  //             color: Colors.redAccent,
                  //             fontWeight: FontWeight.bold,
                  //             fontSize: 15,
                  //           ),
                  //         )
                  //       ],
                  //     ),
                  //     Column(
                  //       children: <Widget>[
                  //         Icon(
                  //           Icons.map,
                  //           color: Colors.grey,
                  //         ),
                  //         Text(
                  //           'ALAMAT',
                  //           style: TextStyle(
                  //             color: Colors.black,
                  //             fontSize: 12.5,
                  //           ),
                  //         ),
                  //         Text(
                  //           '${Vars.alamat}',
                  //           style: TextStyle(
                  //             color: Colors.red,
                  //             fontWeight: FontWeight.w900,
                  //             fontSize: 12.5,
                  //           ),
                  //         )
                  //       ],
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
            _swipe(context),
          ],
        ),
      ),
    );
  }
}
