import 'package:flutter/material.dart';
import 'package:sma1kalijati/View/dashboard.dart';
import 'package:sma1kalijati/View/maps.dart';
import 'package:sma1kalijati/View/selamatDatang.dart';
import 'package:sma1kalijati/View/Berita.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Montserrat',
      ),
      home: new Dashboard(),
      routes: <String, WidgetBuilder>{
        '/Maps': (BuildContext context) => new Maps(),
        '/Berita': (BuildContext context) => new Berita(),
        // '/AcceptPages': (BuildContext context) => new AcceptPages(),
        // '/BeforePage': (BuildContext context) => new BeforePage(),
        // '/NextPage': (BuildContext context) => new NextPage(),
        // '/AfterPage': (BuildContext context) => new AfterPage(),
        // '/Home': (BuildContext context) => new Home(),
        // '/ClickHistoryPage': (BuildContext context) => new ClickHistoryPage(),
      },
    );
  }
}
