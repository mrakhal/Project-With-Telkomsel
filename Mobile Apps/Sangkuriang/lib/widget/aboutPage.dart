import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "User Profile",
      debugShowCheckedModeBanner: false,
      home: AboutPage(),
    );
  }
}

class AboutPage extends StatelessWidget {
  Widget _buildProfileImage() {
    return Center(
      child: Container(
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/logo.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(100.0),
          border: Border.all(
            color: Colors.black87,
            width: 5.0,
          ),
        ),
      ),
    );
  }

  Widget _buildBio(BuildContext context) {
    TextStyle(
      fontFamily: 'Spectral',
      fontWeight: FontWeight.w400, //try changing weight to w500 if not thin
      fontStyle: FontStyle.italic,
      color: Color(0xFF799497),
      fontSize: 16.0,
    );

    return Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        padding: EdgeInsets.all(25.0),
        child: RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              TextSpan(
                text: 'Sangkuriang',
                style: TextStyle(
                  color: Colors.black.withOpacity(1.0),
                  fontWeight: FontWeight.w800,
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                ),
              ),
              TextSpan(
                text:
                    ' adalah layanan aplikasi mobile online, yang memberikan kemudahan bagi para pengguna dalam melakukan pekerjaan. Aplikasi ini pertama kali dibuat pada awal tahun 2019 ',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontFamily: 'Montserrat',
                ),
              ),
            ],
          ),
        ));
  }

  Widget _buildSeparator(Size screenSize) {
    return Container(
      width: screenSize.width / 1.6,
      height: 2.0,
      color: Colors.black54,
      margin: EdgeInsets.only(top: 4.0),
    );
  }

  Widget _buildGetInTouch(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: EdgeInsets.only(top: 10.0),
      child: Text(
        "TIM PENYUSUN",
        style: TextStyle(
          fontSize: 16.0,
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
                  SizedBox(height: screenSize.height / 20),
                  _buildProfileImage(),
                  _buildBio(context),
                  _buildSeparator(screenSize),
                  SizedBox(height: 10.0),
                  _buildGetInTouch(context),
                  //SizedBox(height: 8.0),
                  //_textarea(screenSize),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
