import 'package:flutter/material.dart';
import 'package:timecard/view/landingPage.dart';
import 'package:timecard/view/waktuIqomah.dart';
//import 'view/splashScreen.dart';
import 'view/loginPage.dart';
import 'view/landingPage.dart';
import 'view/waktuSholat.dart';
import 'view/teksPesan.dart';
import 'view/dataMasjid.dart';
import 'view/waktuIqomah.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
  };

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
      home: new LandingPage(),
      routes: <String, WidgetBuilder>{
        '/LandingPage': (BuildContext context) => new LandingPage(),
        '/WaktuSholat': (BuildContext context) => new WaktuSholat(),
        '/TeksPesan': (BuildContext context) => new TeksPesan(),
        '/DataMasjid': (BuildContext context) => new DataMasjid(),
        '/WaktuIqomah': (BuildContext context) => new WaktuIqomah(),
      },
    );
  }
}
