import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Berita extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var panjang = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: panjang / 3.0,
            padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('assets/carousel.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
            child: Row(
              children: <Widget>[
                new Flexible(
                  child: new Column(
                    children: <Widget>[
                      new Text(
                        "Telkomsel Gelar Kompetisi Akselerasi Perkembangan Ekosistem IoT Indonesia",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w900),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0, top: 10.0),
            child: Row(
              children: <Widget>[
                new Flexible(
                  child: new Column(
                    children: <Widget>[
                      new Text(
                        "Oleh Gilang Khasani",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.black54,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
            child: Row(
              children: <Widget>[
                new Flexible(
                  child: new Column(
                    children: <Widget>[
                      new Text(
                        "2 Hari yang lalu",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          new SizedBox(
            height: 9.0,
            child: new Center(
              child: new Container(
                margin: new EdgeInsetsDirectional.only(start: 20.0, end: 300.0),
                height: 4.0,
                color: Colors.red,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
            child: Row(
              children: <Widget>[
                new Flexible(
                  child: new Column(
                    children: <Widget>[
                      new Text(
                        "Telkomsel melalui wadah riset dan pengembangan startup internet of things Telkomsel Innovation Center (TINC) menggelar hackathon Innovate 2019 yang diikuti oleh kalangan akademisi, profesional dan startup Indonesia. Kompetisi ini menantang para peserta untuk menghadirkan solusi inovatif berbasis IoT bagi industri di berbagai bidang Vice President Technology and System Telkomsel, Indra Mardiatna mengungkapkan, fenomena disrupsi digital membuka peluang hadirnya berbagai bisnis baru yang juga perlu didukung oleh sumber daya manusia (SDM) yang adaptif, produktif, dan kompetitif.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
