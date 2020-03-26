import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:sangkuriang/Utills/globalVar.dart';
import 'beforePage.dart';
import 'swipeButton.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "User Profile",
      debugShowCheckedModeBanner: false,
      home: AcceptPage(),
    );
  }
}

class AcceptPage extends StatelessWidget {
  Widget _buildProfileImage() {
    return Center(
      child: Container(
        width: 160.0,
        height: 160.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/avatar.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(80.0),
          border: Border.all(
            color: Color(0xFFF5F5F5),
            width: 5.0,
          ),
        ),
      ),
    );
  }

  Widget _buildFullName() {
    TextStyle _nameTextStyle = TextStyle(
      fontFamily: 'Montserrat',
      color: Colors.black,
      fontSize: 22.0,
      fontWeight: FontWeight.w400,
    );

    return Text(
      'Welcome, ${Vars.fullname}',
      style: TextStyle(
        fontSize: 20,
      ),
    );
  }

  Widget _buildStatus(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 6.0),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Text(
        Vars.lokasi,
        style: TextStyle(
          fontFamily: 'Montserrat',
          color: Colors.black,
          fontSize: 20.0,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  Widget _buildBio(BuildContext context) {
    TextStyle bioTextStyle = TextStyle(
      fontFamily: 'Spectral',
      fontWeight: FontWeight.w400, //try changing weight to w500 if not thin
      fontStyle: FontStyle.italic,
      color: Color(0xFF799497),
      fontSize: 16.0,
    );

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Id : ${Vars.id}",
        textAlign: TextAlign.center,
        style: bioTextStyle,
      ),
    );
  }

  Widget _buildGetInTouch(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: EdgeInsets.only(top: 10.0),
      child: Text(
        "CURRENT ORDER",
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 16.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }

  Widget _swipe(BuildContext context) {
    return SwipeButton(
      thumb: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Align(
              widthFactor: 0.90,
              child: Icon(
                Icons.chevron_right,
                size: 60.0,
                color: Colors.white,
              )),
        ],
      ),
      content: Center(
        child: Text(
          'Swipe right to accept',
          style: TextStyle(color: Colors.white),
        ),
      ),
      onChanged: (result) {
        if (result == SwipePosition.SwipeRight) {
          print('swapped');
        } else {}
      },
    );
  }

  Widget _button(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: EdgeInsets.only(top: 10.0),
      child: new MaterialButton(
        child: Text(
          'ACCEPT',
          style: TextStyle(
            fontFamily: 'Montseratt',
            fontWeight: FontWeight.w800,
          ),
        ),
        color: Colors.green,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BeforePage()),
          );
        },
      ),
    );
  }

  Widget _textarea(Size screenSize, BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 0,
        bottom: 20,
        left: 20,
        right: 20,
      ),
      child: Container(
        height: screenSize.height / 2.5,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(
          left: 50,
          bottom: 20,
          top: 20,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                  child: Text(
                    Vars.request,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      color: Color(0xFFF5F5F5),
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Site : ${Vars.site}",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Alamat : ${Vars.alamat}",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Status : ${Vars.status1}",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat',
                      color: Color(0xFFF5F5F5),
                      fontSize: 15,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Time Request : ${Vars.time}",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      color: Color(0xFFF5F5F5),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    child: FlatButton(
                        onPressed: () {
                          print('prest');
                          MapUtils.openRoute(
                              -3.823216, -38.481700, -3.823216, -38.581700);
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/maps.png')),
                  ),
                ),
                new Expanded(
                  flex: 2,
                  child: new Column(
                    children: <Widget>[
                      new Expanded(
                        child: new Column(
                          children: <Widget>[],
                        ),
                      )
                    ],
                  ),
                ),
                _button(context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: screenSize.height / 25),
                  _buildProfileImage(),
                  SizedBox(height: 15.0),
                  _buildFullName(),
                  _buildStatus(context),
                  SizedBox(height: 10.0),
                  _buildBio(context),
                  //_buildSeparator(screenSize),
                  SizedBox(height: 5.0),
                  _buildGetInTouch(context),
                  _textarea(screenSize, context),
                  _swipe(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
