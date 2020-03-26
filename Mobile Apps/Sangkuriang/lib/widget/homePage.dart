import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sangkuriang/Utills/globalVar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Sangkuriang Apps'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String url =
      'https://cdn1.iconfinder.com/data/icons/avatars-55/100/avatar_profile_user_music_headphones_shirt_cool-512.png';
  final Color green = Color(0xFF1E8161);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              padding: EdgeInsets.only(top: 50),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.2,
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
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: green,
                          image: DecorationImage(
                            image: AssetImage('assets/avatar.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(100.0),
                          border: Border.all(
                            color: Colors.white,
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
                    padding: const EdgeInsets.only(top: 5),
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
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 20),
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
                            fontSize: 12.5,
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
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 4,
              padding: EdgeInsets.only(
                top: 40,
                left: 20,
                right: 40,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          border: Border.all(
                            color: Color(0xFF00BFA5),
                            width: 3.0,
                          ),
                          borderRadius:
                              new BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(
                          children: <Widget>[
                            new Text(
                              'NO ORDER',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
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
          ],
        ),
      ),
    );
  }
}
