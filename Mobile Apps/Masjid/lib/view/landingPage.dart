import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LandingPage extends StatelessWidget {
  final Color color1 = Color(0xffFA696C);
  final Color color2 = Color(0xffFA8165);
  final Color color3 = Color(0xffFB8964);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var panjang = MediaQuery.of(context).size.height;

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
                    Icon(
                      Icons.home,
                      size: 30.0,
                    ),
                    Text(
                      ' PRAYER TIME CONTROLLER',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            blurRadius: 2.0,
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
                      margin:
                          new EdgeInsetsDirectional.only(start: 1.0, end: 0.9),
                      height: 5.0,
                      color: Colors.black54,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(top: 10.0),
                    width: lebar,
                    height: 650,
                    child: Container(
                      decoration: new BoxDecoration(
                        color: Colors.white24,
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(10.0),
                          topRight: const Radius.circular(10.0),
                          bottomLeft: const Radius.circular(10.0),
                          bottomRight: const Radius.circular(10.0),
                        ),
                        border: Border.all(width: 2),
                        image: DecorationImage(
                          image: ExactAssetImage('assets/bg1.jpg'),
                          colorFilter: new ColorFilter.mode(
                              Colors.black.withOpacity(0.6), BlendMode.dstATop),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      margin: EdgeInsets.all(5.0),
                      padding: EdgeInsets.only(top: 20.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'PRAYER TIME CONTROLLER',
                            style: TextStyle(
                              fontSize: 19.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 40.0,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              GestureDetector(
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  radius: 75.0,
                                  child: Image.asset(
                                    'assets/masjid.png',
                                  ),
                                ),
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed('/DataMasjid');
                                },
                              ),
                              GestureDetector(
                                child: Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      radius: 75.0,
                                      child: Image.asset(
                                        'assets/jadwalsholat.png',
                                      ),
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed('/WaktuSholat');
                                },
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              GestureDetector(
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  radius: 75.0,
                                  child: Image.asset(
                                    'assets/quran.png',
                                  ),
                                ),
                                onTap: () {
                                  Navigator.of(context).pushNamed('/TeksPesan');
                                },
                              ),
                              GestureDetector(
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  radius: 75.0,
                                  child: Image.asset(
                                    'assets/iqomah.png',
                                  ),
                                ),
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed('/WaktuIqomah');
                                },
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 40.0,
                              left: 30.0,
                              right: 30.0,
                            ),
                            height: 150,
                            width: lebar,
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
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10.0),
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
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
