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
      home: NextPage(title: 'Sangkuriang Apps'),
    );
  }
}

class NextPage extends StatefulWidget {
  NextPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
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
              height: MediaQuery.of(context).size.height / 1.2,
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
                                fontSize: 15,
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
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  new Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 5,
                        left: 20,
                        right: 20,
                        bottom: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            'SITE',
                            style: TextStyle(
                              color: Color(0xFF00BFA5),
                              fontSize: 12.5,
                            ),
                          ),
                          Text(
                            '${Vars.site}',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 15,
                            ),
                          ),
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
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            'ALAMAT',
                            style: TextStyle(
                              color: Color(0xFF00BFA5),
                              fontSize: 12.5,
                            ),
                          ),
                          Text(
                            '${Vars.alamat}',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
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
                      Column(
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 350,
                            child: new RaisedButton(
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(30.0)),
                              child: new Text(
                                'NEXT',
                                style: new TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context)
                                    .pushReplacementNamed('/AfterPage');
                              },
                              color: Color(0xFF1E8161),
                            ),
                          ),
                        ],
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
