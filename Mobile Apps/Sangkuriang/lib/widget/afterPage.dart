import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'imagePicker.dart';
import 'package:sangkuriang/Utills/globalVar.dart';

class AfterPage extends StatefulWidget {
  @override
  _AfterPage createState() => _AfterPage();
}

class _AfterPage extends State<AfterPage> {
  File _image, _image2;

//  To use Gallery or File Manager to pick Image
//  Comment Line No. 19 and uncomment Line number 20
  Future getImage(int index) async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      if (index == 1) {
        _image = image;
      } else {
        _image2 = image;
      }
    });
  }

  Future getImageTwo() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

  final String url =
      'https://cdn3.iconfinder.com/data/icons/avatars-flat/33/man_3-512.png';
  final Color green = Color(0xFF1E8161);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.black,
          title: new Text("TICKET"),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 30,
                    right: 30,
                    bottom: 20,
                  ),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(32),
                        bottomLeft: Radius.circular(32)),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 10,
                        ),
                        child: Text(
                          'INFO KENDALA',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'TIME REQUEST',
                              style: TextStyle(
                                color: Color(0xFF00BFA5),
                                fontWeight: FontWeight.w900,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              '${Vars.time}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                'STATUS',
                                style: TextStyle(
                                  color: Color(0xFF00BFA5),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '${Vars.status1}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                'CLUSTER',
                                style: TextStyle(
                                  color: Color(0xFF00BFA5),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '${Vars.lokasi}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                'SITE',
                                style: TextStyle(
                                  color: Color(0xFF00BFA5),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '${Vars.site}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                            ),
                            child: Text(
                              'ALAMAT',
                              style: TextStyle(
                                color: Color(0xFF00BFA5),
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          Text(
                            '${Vars.alamat}',
                            style: TextStyle(
                              color: Color(0xFFFAFAFA),
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 1.7,
                  padding: EdgeInsets.only(
                    top: 15,
                    bottom: 30,
                    left: 30,
                    right: 30,
                  ),
                  child: ListView(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new Text(
                            'FORM AFTER',
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                          new TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: new InputDecoration(
                              hintText: 'AFTER RUNNING HOUR',
                              labelText: 'RUNNING HOUR',
                            ),
                          ),
                          new TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: new InputDecoration(
                                hintText: 'AFTER kWh PLN',
                                labelText: 'kWh PLN'),
                          ),
                          new Container(
                            padding: EdgeInsets.only(top: 30),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'PHOTO AFTER',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    getImage(1);
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 20),
                                  height: 125,
                                  width: 125,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF00BFA5),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Center(
                                        child: _image == null
                                            ? Image.asset('assets/plus.png')
                                            : Image.file(_image),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    getImage(2);
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 20),
                                  height: 125,
                                  width: 125,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF00BFA5),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Center(
                                        child: _image2 == null
                                            ? Image.asset('assets/plus.png')
                                            : Image.file(_image2),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                'GENSET',
                              ),
                              Text(
                                'KWH',
                              )
                            ],
                          ),
                          new Container(
                            height: 50,
                            width: 200,
                            child: new RaisedButton(
                              child: new Text(
                                'SAVE',
                                style: new TextStyle(color: Colors.white),
                              ),
                              onPressed: () {
                                Navigator.of(context)
                                    .pushReplacementNamed('/HomePage');
                              },
                              color: Color(0xFF00BFA5),
                            ),
                            margin: new EdgeInsets.only(top: 30.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
