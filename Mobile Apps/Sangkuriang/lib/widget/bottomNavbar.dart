import 'package:flutter/material.dart';
import 'package:sangkuriang/widget/acceptPageNew.dart';
import 'package:sangkuriang/widget/aboutPage.dart';
import 'package:sangkuriang/widget/historyPage.dart';
// import 'package:sangkuriang/screen/acceptPage.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    AcceptPages(),
    HistoryPage(),
    AboutPage(),
  ];

  //const PrimaryColor = const Color(0xFFD50000);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: PrimaryColor,
      //   title: Text('Home'),
      // ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        fixedColor: Colors.black87,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              'HOME',
              style: TextStyle(
                fontFamily: 'Montserrat',
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text(
              'HISTORY',
              style: TextStyle(
                fontFamily: 'Montserrat',
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone_android),
            title: Text(
              'ABOUT',
              style: TextStyle(
                fontFamily: 'Montserrat',
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
