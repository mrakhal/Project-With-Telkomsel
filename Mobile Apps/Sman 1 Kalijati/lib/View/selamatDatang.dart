import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SelamatDatang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var panjang = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: panjang / 1.5,
            padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('assets/sma.jpg'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Row(children: <Widget>[
              new Flexible(
                child: new Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Text(
                          "Selamat Datang",
                          style:
                              TextStyle(fontSize: 30.0, color: Colors.black54),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ]),
          ),
          Container(
            padding: EdgeInsets.only(left: 35.0, right: 35.0),
            child: Row(
              children: <Widget>[
                new Flexible(
                  child: new Column(
                    children: <Widget>[
                      new Text(
                        "T Presence aplikasi bentuk kerja sama antara SMAN 1 Kalijati dan Telkomsel Regional Jawa Barat",
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          new InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/Maps');
            },
            child: new Container(
              margin: EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
              //width: 100.0,
              height: 50.0,
              decoration: new BoxDecoration(
                color: Colors.black54,
                border: new Border.all(color: Colors.white, width: 2.0),
                borderRadius: new BorderRadius.circular(10.0),
              ),
              child: new Center(
                child: new Text(
                  'SIGN IN',
                  style: new TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Register'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
