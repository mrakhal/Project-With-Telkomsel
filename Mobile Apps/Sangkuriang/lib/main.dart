import 'package:flutter/material.dart';
import 'package:sangkuriang/widget/acceptPageNew.dart';
import 'package:sangkuriang/widget/bottomNavbar.dart';
import 'widget/loginPage.dart';
import 'widget/splashScreen.dart';
import 'widget/acceptPageNew.dart';
import 'widget/beforePage.dart';
import 'widget/nextPage.dart';
import 'widget/afterPage.dart';
import 'widget/homePage.dart';

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
        fontFamily: 'Montserrat',
      ),
      home: new SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/LoginPage': (BuildContext context) => new LoginPage(),
        '/HomePage': (BuildContext context) => new HomePage(),
        '/AcceptPages': (BuildContext context) => new AcceptPages(),
        '/BeforePage': (BuildContext context) => new BeforePage(),
        '/NextPage': (BuildContext context) => new NextPage(),
        '/AfterPage': (BuildContext context) => new AfterPage(),
        '/Home': (BuildContext context) => new Home(),
      },
    );
  }
}
