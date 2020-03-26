import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:sma1kalijati/View/Berita.dart';
import 'package:sma1kalijati/View/maps.dart';
import 'package:sma1kalijati/View/selamatDatang.dart';

class Dashboard extends StatefulWidget {
  _DashboardState createState() => new _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telkomsel Apps',
      home: SelamatDatang(),
    );
  }
}

// IMAGES
// COLORS
var textYellow = Color(0xFFf6c24d);
var iconYellow = Color(0xFFf4bf47);

var green = Color(0xFF4caf6a);
var greenLight = Color(0xFFd8ebde);

var red = Color(0xFFf36169);
var redLight = Color(0xFFf2dcdf);

var blue = Color(0xFF398bcf);
var blueLight = Color(0xFFc1dbee);

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Container(
          child: ListView(
            children: <Widget>[
              _Header(context),
              SizedBox(height: 16.0),
              SelectTypeSection(),
              SizedBox(height: 16.0),
              _Text(context),
              CarouselListView(),
            ],
          ),
        ));
  }
}

class SelectTypeSection extends StatefulWidget {
  @override
  _SelectTypeSectionState createState() => _SelectTypeSectionState();
}

class _SelectTypeSectionState extends State<SelectTypeSection> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(left: 10.0, bottom: 20.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'APLIKASI',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w900),
                  ),
                ],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              AnimatedOpacity(
                opacity: _visible ? 1.0 : 0.5,
                duration: Duration(milliseconds: 500),
                child: GestureDetector(
                  child: Container(
                    width: 90.0,
                    height: 90.0,
                    padding: const EdgeInsets.all(2.0), // borde width
                    decoration: new BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/message.png"),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(width: 5.0, color: Colors.grey),
                      color: Colors.grey, // border color
                      shape: BoxShape.circle,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      _visible = !_visible;
                    });
                  },
                ),
              ),
              GestureDetector(
                child: Container(
                  width: 90.0,
                  height: 90.0,
                  padding: const EdgeInsets.all(2.0), // borde width
                  decoration: new BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/book.png"),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 5.0, color: Colors.grey),
                    color: Colors.grey, // border color
                    shape: BoxShape.circle,
                  ),
                ),
                onTap: () {},
              ),
              GestureDetector(
                child: Container(
                  width: 90.0,
                  height: 90.0,
                  padding: const EdgeInsets.all(2.0), // borde width
                  decoration: new BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/document.png"),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 5.0, color: Colors.grey),
                    color: Colors.grey, // border color
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  width: 90.0,
                  height: 90.0,
                  padding: const EdgeInsets.all(2.0), // borde width
                  decoration: new BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/jelema.png"),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 5.0, color: Colors.grey),
                    color: Colors.grey, // border color
                    shape: BoxShape.circle,
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
          ),
          new SizedBox(
            height: 3.0,
            child: new Center(
              child: new Container(
                margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                height: 2.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CarouselListView extends StatelessWidget {
  const CarouselListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: 160.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            ItemCard(),
            ItemCard(),
            ItemCard(),
            ItemCard(),
          ],
        ),
      ),
    );
  }
}

Widget _Text(BuildContext context) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.only(bottom: 10.0, left: 15.0),
      child: Text(
        'BERITA',
        style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w900),
      ),
    ),
  );
}

Widget _Button(BuildContext context) {
  var lebar = MediaQuery.of(context).size.width;
  var panjang = MediaQuery.of(context).size.height;
  return Container(
    height: panjang / 16,
    width: lebar / 2.0,
    margin: EdgeInsets.only(top: 80.0),
    decoration: BoxDecoration(
      border: Border.all(
        width: 0.5,
        color: Colors.white,
      ),
      borderRadius: new BorderRadius.circular(10.0),
    ),
    child: Opacity(
      //wrap our button in an `Opacity` Widget
      opacity: 0.8, //with 50% opacity
      child: RaisedButton(
        color: Colors.transparent,
        child: Text(
          'CLOCK IN',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Maps()),
          );
        },
      ),
    ),
  );
}

Widget _Header(BuildContext context) {
  var lebar = MediaQuery.of(context).size.width;
  var panjang = MediaQuery.of(context).size.height;
  return Container(
    height: panjang / 2.5,
    width: lebar,
    decoration: new BoxDecoration(
      image: DecorationImage(
        image: ExactAssetImage('assets/buku1.jpg'),
        colorFilter: new ColorFilter.mode(
            Colors.black.withOpacity(0.8), BlendMode.dstATop),
        fit: BoxFit.cover,
      ),
    ),
    child: Container(
      margin: EdgeInsets.only(top: 20.0, left: 20),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Hi Dimas Hanafiah',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      'Senin, 22 Juli 2019',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Clock Out Terakhir',
                        style: TextStyle(fontSize: 15.0, color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                      ),
                      Text(
                        '21 Juli 2019 - 14:00',
                        style: TextStyle(fontSize: 15.0, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                _Button(context)
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
          height: 160.0,
          width: 300.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/carousel.jpg'), fit: BoxFit.cover)),
          child: Stack(
            children: <Widget>[
              GestureDetector(
                child: Container(
                  height: 160.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.black.withOpacity(0.1), Colors.black],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Berita()),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Text(
                      'Berita',
                      style: TextStyle(
                          color: textYellow,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          letterSpacing: 1.1),
                    ),
                    Text(
                      'Telkomsel Menang Dari XL',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          letterSpacing: 1.1),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
