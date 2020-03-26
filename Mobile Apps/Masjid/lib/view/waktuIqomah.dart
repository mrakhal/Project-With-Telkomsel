import 'package:flutter/material.dart';

class WaktuIqomah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Number Count",
      home: new NumberCountDemo(),
    );
  }
}

class NumberCountDemo extends StatefulWidget {
  @override
  _NumberCountDemoState createState() => new _NumberCountDemoState();
}

class _NumberCountDemoState extends State<NumberCountDemo> {
  void add(String type, int i) {
    setState(() {
      print(array[type][i]);
      array[type][i]++;
    });
  }

  void minus(String type, int i) {
    setState(() {
      //print(list[i, j])
      print(array[type][i]);
      array[type][i]--;
    });
  }

  var array = {
    "subuh": [0, 0, 0],
    "syuruq": [0, 0, 0],
    "dzuhur": [0, 0, 0],
    "ashar": [0, 0, 0],
    "maghrib": [0, 0, 0],
    "isya": [0, 0, 0],
  };

  var list = [
    [
      [0, 0],
      [0, 1],
      [0, 2]
    ],
    [
      [1, 0],
      [1, 1],
      [1, 2]
    ],
    [
      [2, 0],
      [2, 1],
      [2, 2]
    ],
    [
      [3, 0],
      [3, 1],
      [3, 2]
    ],
    [
      [4, 0],
      [4, 1],
      [4, 2]
    ],
    [
      [5, 0],
      [5, 1],
      [5, 2]
    ],
  ];

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var panjang = MediaQuery.of(context).size.height;
    var toska = Color(0XFF2D8787);
    return Scaffold(
      body: Container(
        height: panjang,
        padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('assets/bg.jpg'),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: ListView(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.access_time),
                      Text(
                        ' JADWAL SHOLAT ADJUSTMENT',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                          shadows: [
                            Shadow(
                              blurRadius: 1.0,
                              color: Colors.black,
                              offset: Offset(1.0, 1.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                  ),
                  new SizedBox(
                    height: 3.0,
                    child: new Center(
                      child: new Container(
                        margin: new EdgeInsetsDirectional.only(
                            start: 1.0, end: 0.9),
                        height: 5.0,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10.0),
                    width: lebar,
                    height: panjang / 0.6, //Vakekokbunda
                    child: Container(
                      decoration: new BoxDecoration(
                        color: Colors.white24,
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(10.0),
                          topRight: const Radius.circular(10.0),
                          bottomLeft: const Radius.circular(10.0),
                          bottomRight: const Radius.circular(10.0),
                        ),
                        image: DecorationImage(
                          image: ExactAssetImage('assets/bg1.jpg'),
                          colorFilter: new ColorFilter.mode(
                              Colors.black.withOpacity(0.6), BlendMode.dstATop),
                          fit: BoxFit.fitHeight,
                        ),
                        border: Border.all(width: 2),
                      ),
                      margin: EdgeInsets.all(5.0),
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            child: Container(
                              child: Container(
                                padding:
                                    EdgeInsets.only(right: 15.0, top: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(right: 100.0),
                                      child: Text(
                                        'SEBELUM',
                                        style: TextStyle(
                                          color: toska,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.edit,
                                      size: 25.0,
                                      color: toska,
                                    ),
                                    Text(
                                      'EDIT',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          color: toska),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {},
                          ),
                          Expanded(
                            child: GridView.count(
                              physics: new NeverScrollableScrollPhysics(),
                              crossAxisCount: 5,
                              childAspectRatio: 2.0,
                              mainAxisSpacing: 4.0,
                              crossAxisSpacing: 1.0,
                              padding: const EdgeInsets.all(10.0),
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'SHUBUH',
                                      style: TextStyle(
                                        color: toska,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(left: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            minus("subuh", 0);
                                          },
                                          child: new Icon(
                                            Icons.minimize,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 25.0),
                                      child: new Text(
                                        array["subuh"][0].toString(),
                                        style: new TextStyle(fontSize: 20.0),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            add("subuh", 0);
                                          },
                                          child: new Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'MINUTES',
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          color: toska,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'SYURUQ',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: toska,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(left: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            minus("syuruq", 0);
                                          },
                                          child: new Icon(
                                            Icons.minimize,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 25.0),
                                      child: new Text(
                                        array["syuruq"][0].toString(),
                                        style: new TextStyle(fontSize: 20.0),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            add("syuruq", 0);
                                          },
                                          child: new Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'MINUTES',
                                      style: TextStyle(
                                          color: toska,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'DZUHUR',
                                      style: TextStyle(
                                        color: toska,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(left: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            minus("dzuhur", 0);
                                          },
                                          child: new Icon(
                                            Icons.minimize,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 25.0),
                                      child: new Text(
                                        array["dzuhur"][0].toString(),
                                        style: new TextStyle(fontSize: 20.0),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            add("dzuhur", 0);
                                          },
                                          child: new Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'MINUTES',
                                      style: TextStyle(
                                          color: toska,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'ASHAR',
                                      style: TextStyle(
                                        color: toska,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(left: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            minus("ashar", 0);
                                          },
                                          child: new Icon(
                                            Icons.minimize,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 25.0),
                                      child: new Text(
                                        array["ashar"][0].toString(),
                                        style: new TextStyle(fontSize: 20.0),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            add("ashar", 0);
                                          },
                                          child: new Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'MINUTES',
                                      style: TextStyle(
                                          color: toska,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'MAGHRIB',
                                      style: TextStyle(
                                        color: toska,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(left: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            minus("maghrib", 0);
                                          },
                                          child: new Icon(
                                            Icons.minimize,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 25.0),
                                      child: new Text(
                                        array["maghrib"][0].toString(),
                                        style: new TextStyle(fontSize: 20.0),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            add("maghrib", 0);
                                          },
                                          child: new Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'MINUTES',
                                      style: TextStyle(
                                          color: toska,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'ISYA',
                                      style: TextStyle(
                                        color: toska,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(left: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            minus("isya", 0);
                                          },
                                          child: new Icon(
                                            Icons.minimize,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 25.0),
                                      child: new Text(
                                        array["isya"][0].toString(),
                                        style: new TextStyle(fontSize: 20.0),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            add("isya", 0);
                                          },
                                          child: new Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'MINUTES',
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          color: toska,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          new SizedBox(
                            height: 3.0,
                            child: new Center(
                              child: new Container(
                                margin: new EdgeInsetsDirectional.only(
                                    start: 1.0, end: 0.9),
                                height: 5.0,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 15.0),
                            child: Container(
                              padding: EdgeInsets.only(left: 150.0),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(right: 100.0),
                                    child: Text(
                                      'IQOMAH',
                                      style: TextStyle(
                                        color: toska,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: GridView.count(
                              physics: new NeverScrollableScrollPhysics(),
                              crossAxisCount: 5,
                              childAspectRatio: 2.0,
                              mainAxisSpacing: 4.0,
                              crossAxisSpacing: 1.0,
                              padding: const EdgeInsets.all(10.0),
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'SHUBUH',
                                      style: TextStyle(
                                        color: toska,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(left: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            minus("subuh", 1);
                                          },
                                          child: new Icon(
                                            Icons.minimize,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 25.0),
                                      child: new Text(
                                        array["subuh"][1].toString(),
                                        style: new TextStyle(fontSize: 20.0),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            add("subuh", 1);
                                          },
                                          child: new Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'MINUTES',
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          color: toska,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'SYURUQ',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: toska,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(left: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            minus("syuruq", 1);
                                          },
                                          child: new Icon(
                                            Icons.minimize,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 25.0),
                                      child: new Text(
                                        array["syuruq"][1].toString(),
                                        style: new TextStyle(fontSize: 20.0),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            add("syuruq", 1);
                                          },
                                          child: new Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'MINUTES',
                                      style: TextStyle(
                                          color: toska,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'DZUHUR',
                                      style: TextStyle(
                                        color: toska,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(left: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            minus("dzuhur", 1);
                                          },
                                          child: new Icon(
                                            Icons.minimize,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 25.0),
                                      child: new Text(
                                        array["dzuhur"][1].toString(),
                                        style: new TextStyle(fontSize: 20.0),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            add("dzuhur", 1);
                                          },
                                          child: new Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'MINUTES',
                                      style: TextStyle(
                                          color: toska,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'ASHAR',
                                      style: TextStyle(
                                        color: toska,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(left: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            minus("ashar", 1);
                                          },
                                          child: new Icon(
                                            Icons.minimize,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 25.0),
                                      child: new Text(
                                        array["ashar"][1].toString(),
                                        style: new TextStyle(fontSize: 20.0),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            add("ashar", 1);
                                          },
                                          child: new Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'MINUTES',
                                      style: TextStyle(
                                          color: toska,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'MAGHRIB',
                                      style: TextStyle(
                                        color: toska,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(left: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            minus("maghrib", 1);
                                          },
                                          child: new Icon(
                                            Icons.minimize,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 25.0),
                                      child: new Text(
                                        array["maghrib"][1].toString(),
                                        style: new TextStyle(fontSize: 20.0),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            add("maghrib", 1);
                                          },
                                          child: new Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'MINUTES',
                                      style: TextStyle(
                                          color: toska,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'ISYA',
                                      style: TextStyle(
                                        color: toska,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(left: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            minus("isya", 1);
                                          },
                                          child: new Icon(
                                            Icons.minimize,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 25.0),
                                      child: new Text(
                                        array["isya"][1].toString(),
                                        style: new TextStyle(fontSize: 20.0),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            add("isya", 1);
                                          },
                                          child: new Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'MINUTES',
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          color: toska,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          new SizedBox(
                            height: 3.0,
                            child: new Center(
                              child: new Container(
                                margin: new EdgeInsetsDirectional.only(
                                    start: 1.0, end: 0.9),
                                height: 5.0,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 15.0),
                            child: Container(
                              padding: EdgeInsets.only(left: 150.0),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(right: 100.0),
                                    child: Text(
                                      'DURASI',
                                      style: TextStyle(
                                        color: toska,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: GridView.count(
                              physics: new NeverScrollableScrollPhysics(),
                              crossAxisCount: 5,
                              childAspectRatio: 2.0,
                              mainAxisSpacing: 4.0,
                              crossAxisSpacing: 1.0,
                              padding: const EdgeInsets.all(10.0),
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'SHUBUH',
                                      style: TextStyle(
                                        color: toska,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(left: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            minus("subuh", 2);
                                          },
                                          child: new Icon(
                                            Icons.minimize,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 25.0),
                                      child: new Text(
                                        array["subuh"][2].toString(),
                                        style: new TextStyle(fontSize: 20.0),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            add("subuh", 2);
                                          },
                                          child: new Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'MINUTES',
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          color: toska,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'SYURUQ',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: toska,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(left: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            minus("syuruq", 2);
                                          },
                                          child: new Icon(
                                            Icons.minimize,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 25.0),
                                      child: new Text(
                                        array["syuruq"][2].toString(),
                                        style: new TextStyle(fontSize: 20.0),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            add("syuruq", 2);
                                          },
                                          child: new Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'MINUTES',
                                      style: TextStyle(
                                          color: toska,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'DZUHUR',
                                      style: TextStyle(
                                        color: toska,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(left: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            minus("dzuhur", 2);
                                          },
                                          child: new Icon(
                                            Icons.minimize,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 25.0),
                                      child: new Text(
                                        array["dzuhur"][2].toString(),
                                        style: new TextStyle(fontSize: 20.0),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            add("dzuhur", 2);
                                          },
                                          child: new Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'MINUTES',
                                      style: TextStyle(
                                          color: toska,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'ASHAR',
                                      style: TextStyle(
                                        color: toska,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(left: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            minus("ashar", 2);
                                          },
                                          child: new Icon(
                                            Icons.minimize,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 25.0),
                                      child: new Text(
                                        array["ashar"][2].toString(),
                                        style: new TextStyle(fontSize: 20.0),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            add("ashar", 2);
                                          },
                                          child: new Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'MINUTES',
                                      style: TextStyle(
                                          color: toska,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'MAGHRIB',
                                      style: TextStyle(
                                        color: toska,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(left: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            minus("maghrib", 2);
                                          },
                                          child: new Icon(
                                            Icons.minimize,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 25.0),
                                      child: new Text(
                                        array["maghrib"][2].toString(),
                                        style: new TextStyle(fontSize: 20.0),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            add("maghrib", 2);
                                          },
                                          child: new Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'MINUTES',
                                      style: TextStyle(
                                          color: toska,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'ISYA',
                                      style: TextStyle(
                                        color: toska,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(left: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            minus("isya", 2);
                                          },
                                          child: new Icon(
                                            Icons.minimize,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 25.0),
                                      child: new Text(
                                        array["isya"][2].toString(),
                                        style: new TextStyle(fontSize: 20.0),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 30.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            add("isya", 2);
                                          },
                                          child: new Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                          backgroundColor: toska,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'MINUTES',
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          color: toska,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              new InkWell(
                                onTap: () {
                                  Navigator.pop(context, '/LandingPage');
                                },
                                child: new Container(
                                  //width: 100.0,
                                  height: 50.0,
                                  width: 100.0,
                                  decoration: new BoxDecoration(
                                    color: Color(0XFFA1E6EB),
                                    border: new Border.all(
                                        color: Colors.black, width: 1.0),
                                    borderRadius:
                                        new BorderRadius.circular(15.0),
                                  ),
                                  child: new Center(
                                    child: new Text(
                                      'SAVE',
                                      style: new TextStyle(
                                        fontSize: 18.0,
                                        color: toska,
                                        fontWeight: FontWeight.w900,
                                        shadows: [
                                          Shadow(
                                            blurRadius: 2.0,
                                            color: Colors.white,
                                            offset: Offset(1.0, 1.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              new InkWell(
                                onTap: () {
                                  Navigator.pop(context, '/LandingPage');
                                },
                                child: new Container(
                                  //width: 100.0,
                                  height: 50.0,
                                  width: 100.0,
                                  decoration: new BoxDecoration(
                                    color: Color(0XFFA1E6EB),
                                    border: new Border.all(
                                        color: Colors.black, width: 1.0),
                                    borderRadius:
                                        new BorderRadius.circular(15.0),
                                  ),
                                  child: new Center(
                                    child: new Text(
                                      'BACK',
                                      style: new TextStyle(
                                        fontSize: 18.0,
                                        color: toska,
                                        fontWeight: FontWeight.w900,
                                        shadows: [
                                          Shadow(
                                            blurRadius: 2.0,
                                            color: Colors.white,
                                            offset: Offset(1.0, 1.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20.0),
                          ),
                          _new(context),
                          Container(
                            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Made By Telkomsel with',
                                  style: TextStyle(
                                    color: Color(0XFF49A29C),
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Icon(
                                  Icons.favorite_border,
                                  size: 15.0,
                                  color: Colors.blue[200],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _new(BuildContext context) {
  var lebar = MediaQuery.of(context).size.width / 2.5;
  var panjang = MediaQuery.of(context).size.height;
  return Container(
    margin: EdgeInsets.only(
      top: 30.0,
      left: 30.0,
      right: 30.0,
    ),
    height: lebar,
    width: panjang,
    decoration: BoxDecoration(
      border: Border.all(width: 1.0),
      borderRadius: new BorderRadius.all(
        const Radius.circular(20.0),
      ),
    ),
    padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
    child: ListView(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'INFO PENGGUNA',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Text(
              'MASJID',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              'Untuk melakukan edit nama masjid alamat dan koordinat.',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
            ),
            Text(
              'JADWAL SHOLAT',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              'Untuk Melakukan Edit Jadwal Sholat.',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
            ),
            Text(
              'TEKS PESAN',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              'Untuk Melakukan Edit Teks Pesan berupa running text',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
            ),
            Text(
              'IQOMAH',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              'Untuk Melakukan Edit waktu iqomah.',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

// appBar: new AppBar(title: new Text("Number Count")),
// body: new Container(
//   child: new Center(
//     child: new Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: <Widget>[
//         new FloatingActionButton(
//           onPressed: add,
//           child: new Icon(
//             Icons.add,
//             size: 15.0,
//             color: Colors.black,
//           ),
//           backgroundColor: Colors.white,
//         ),
//         new Text('$list[0]', style: new TextStyle(fontSize: 60.0)),
//         new FloatingActionButton(
//           onPressed: minus(0),
//           child: new Icon(
//               const IconData(0xe15b, fontFamily: 'MaterialIcons'),
//               color: Colors.black),
//           backgroundColor: Colors.white,
//         ),
//       ],
//     ),
//   ),
// ),
