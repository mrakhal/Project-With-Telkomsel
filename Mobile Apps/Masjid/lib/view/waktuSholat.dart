import 'package:flutter/material.dart';

class WaktuSholat extends StatelessWidget {
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
  void add(int i) {
    setState(() {
      list[i]++;
    });
  }

  void minus(int i) {
    setState(() {
      list[i]--;
    });
  }

  var list = [0, 0, 0, 0, 0, 0];

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
                    height: panjang / 1.1,
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
                                margin: EdgeInsets.only(left: 270.0, top: 20.0),
                                child: Column(
                                  children: <Widget>[
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
                              shrinkWrap: true,
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
                                      margin: EdgeInsets.only(left: 25.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            minus(0);
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
                                        list[0].toString(),
                                        style: new TextStyle(fontSize: 20.0),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 25.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            add(0);
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
                                      margin: EdgeInsets.only(left: 25.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            minus(1);
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
                                        list[1].toString(),
                                        style: new TextStyle(fontSize: 20.0),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 25.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            add(1);
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
                                      margin: EdgeInsets.only(left: 25.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            minus(2);
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
                                        list[2].toString(),
                                        style: new TextStyle(fontSize: 20.0),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 25.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            add(2);
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
                                      margin: EdgeInsets.only(left: 25.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            minus(3);
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
                                        list[3].toString(),
                                        style: new TextStyle(fontSize: 20.0),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 25.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            add(3);
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
                                      margin: EdgeInsets.only(left: 25.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            minus(4);
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
                                        list[4].toString(),
                                        style: new TextStyle(fontSize: 20.0),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 25.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            add(4);
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
                                      margin: EdgeInsets.only(left: 25.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            minus(5);
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
                                        list[5].toString(),
                                        style: new TextStyle(fontSize: 20.0),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 25.0),
                                      height: 30.0,
                                      width: 30.0,
                                      child: FittedBox(
                                        child: FloatingActionButton(
                                          heroTag: null,
                                          onPressed: () {
                                            add(5);
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
