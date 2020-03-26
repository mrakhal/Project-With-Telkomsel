import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TeksPesan extends StatefulWidget {
  _TeksPesanState createState() => new _TeksPesanState();
}

class _TeksPesanState extends State<TeksPesan> {
  final Color color1 = Color(0xffFA696C);
  final Color color2 = Color(0xffFA8165);
  final Color color3 = Color(0xffFB8964);
  TextEditingController data = new TextEditingController();
  TextEditingController data1 = new TextEditingController();
  TextEditingController data2 = new TextEditingController();
  TextEditingController data3 = new TextEditingController();
  TextEditingController data4 = new TextEditingController();
  TextEditingController data5 = new TextEditingController();

  void _popupDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'NOTIFIKASI',
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w900),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      'Berhasil Input Data Masjid',
                      style: TextStyle(fontSize: 13.0),
                    ),
                    RaisedButton(
                      child: Text('OK'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  _onClear() {
    setState(() {
      data.text = "";
    });
  }

  _onClear1() {
    setState(() {
      data1.text = "";
    });
  }

  _onClear2() {
    setState(() {
      data2.text = "";
    });
  }

  _onClear3() {
    setState(() {
      data3.text = "";
      data4.text = "";
      data5.text = "";
    });
  }

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
            fit: BoxFit.cover,
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
                        Icons.book,
                        size: 30.0,
                      ),
                      Text(
                        ' TEKS PESAN',
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
                        margin: new EdgeInsetsDirectional.only(
                            start: 1.0, end: 0.9),
                        height: 5.0,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      width: lebar,
                      height: panjang / 0.78,
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
                                Colors.black.withOpacity(0.6),
                                BlendMode.dstATop),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        margin: EdgeInsets.all(5.0),
                        padding: EdgeInsets.only(top: 20.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 10.0, right: 10.0),
                              height: panjang / 6,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1.0),
                                borderRadius: new BorderRadius.only(
                                  topLeft: const Radius.circular(10.0),
                                  topRight: const Radius.circular(10.0),
                                  bottomLeft: const Radius.circular(10.0),
                                  bottomRight: const Radius.circular(10.0),
                                ),
                              ),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(top: 5.0),
                                    ),
                                    Text(
                                      'TEKS PESAN ALARM SHOLAT',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: toska,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    new ListTile(
                                      contentPadding: EdgeInsets.only(
                                          top: 15.0, left: 15.0),
                                      title: TextField(
                                        controller: data,
                                        keyboardType: TextInputType.text,
                                        decoration: InputDecoration(
                                          hintText: 'Teks Pesan Alarm',
                                          fillColor: Colors.white,
                                          contentPadding: EdgeInsets.fromLTRB(
                                              10.0, 10.0, 20.0, 20.0),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0)),
                                        ),
                                      ),
                                      trailing: new Container(
                                        width: lebar / 4,
                                        child: new Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: <Widget>[
                                            new InkWell(
                                              onTap: () {
                                                var teksalarm = data.text;
                                                print(teksalarm);
                                                _onClear();
                                                _popupDialog(context);
                                              },
                                              child: new Container(
                                                margin:
                                                    EdgeInsets.only(right: 4.0),
                                                //width: 100.0,
                                                height: lebar,
                                                width: panjang / 9,
                                                decoration: new BoxDecoration(
                                                  color: Color(0XFFA1E6EB),
                                                  border: new Border.all(
                                                      color: Colors.black,
                                                      width: 1.0),
                                                  borderRadius:
                                                      new BorderRadius.circular(
                                                          15.0),
                                                ),
                                                child: new Center(
                                                  child: new Text(
                                                    'SAVE',
                                                    style: new TextStyle(
                                                      fontSize: 18.0,
                                                      color: toska,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      shadows: [
                                                        Shadow(
                                                          blurRadius: 2.0,
                                                          color: Colors.white,
                                                          offset:
                                                              Offset(1.0, 1.0),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 10.0,
                                  left: 10.0,
                                  right: 10.0,
                                  bottom: 10.0),
                              height: panjang / 6,
                              width: lebar,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1.0),
                                borderRadius: new BorderRadius.only(
                                  topLeft: const Radius.circular(10.0),
                                  topRight: const Radius.circular(10.0),
                                  bottomLeft: const Radius.circular(10.0),
                                  bottomRight: const Radius.circular(10.0),
                                ),
                              ),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(top: 5.0),
                                    ),
                                    Text(
                                      'TEKS PESAN IQOMAH',
                                      style: TextStyle(
                                        color: toska,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    new ListTile(
                                      contentPadding: EdgeInsets.only(
                                          top: 15.0, left: 15.0),
                                      title: TextField(
                                        controller: data1,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        autofocus: false,
                                        decoration: InputDecoration(
                                          hintText: 'Teks Pesan Iqomah',
                                          fillColor: Colors.white,
                                          contentPadding: EdgeInsets.fromLTRB(
                                              10.0, 10.0, 20.0, 20.0),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0)),
                                        ),
                                      ),
                                      trailing: new Container(
                                        width: lebar / 4,
                                        child: new Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: <Widget>[
                                            new InkWell(
                                              onTap: () {
                                                var teksiqomah = data1.text;
                                                print(teksiqomah);
                                                _onClear1();
                                                _popupDialog(context);
                                              },
                                              child: new Container(
                                                margin:
                                                    EdgeInsets.only(right: 4.0),
                                                //width: 100.0,
                                                height: lebar,
                                                width: panjang / 9,
                                                decoration: new BoxDecoration(
                                                  color: Color(0XFFA1E6EB),
                                                  border: new Border.all(
                                                      color: Colors.black,
                                                      width: 1.0),
                                                  borderRadius:
                                                      new BorderRadius.circular(
                                                          15.0),
                                                ),
                                                child: new Center(
                                                  child: new Text(
                                                    'SAVE',
                                                    style: new TextStyle(
                                                      fontSize: 18.0,
                                                      color: toska,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      shadows: [
                                                        Shadow(
                                                          blurRadius: 2.0,
                                                          color: Colors.white,
                                                          offset:
                                                              Offset(1.0, 1.0),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 10.0,
                                  left: 10.0,
                                  right: 10.0,
                                  bottom: 10.0),
                              height: panjang / 6,
                              width: lebar,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1.0),
                                borderRadius: new BorderRadius.only(
                                  topLeft: const Radius.circular(10.0),
                                  topRight: const Radius.circular(10.0),
                                  bottomLeft: const Radius.circular(10.0),
                                  bottomRight: const Radius.circular(10.0),
                                ),
                              ),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(top: 5.0),
                                    ),
                                    Text(
                                      'TEKS PESAN JUMAT',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: toska,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    new ListTile(
                                      contentPadding: EdgeInsets.only(
                                          top: 15.0, left: 15.0),
                                      title: TextField(
                                        controller: data2,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        autofocus: false,
                                        decoration: InputDecoration(
                                          hintText: 'Teks Pesan Jumat',
                                          fillColor: Colors.white,
                                          contentPadding: EdgeInsets.fromLTRB(
                                              10.0, 10.0, 20.0, 20.0),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0)),
                                        ),
                                      ),
                                      trailing: new Container(
                                        width: lebar / 4,
                                        child: new Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: <Widget>[
                                            new InkWell(
                                              onTap: () {
                                                var teksjumat = data2.text;
                                                _onClear2();
                                                _popupDialog(context);
                                              },
                                              child: new Container(
                                                margin:
                                                    EdgeInsets.only(right: 4.0),
                                                //width: 100.0,
                                                height: lebar,
                                                width: panjang / 9,
                                                decoration: new BoxDecoration(
                                                  color: Color(0XFFA1E6EB),
                                                  border: new Border.all(
                                                      color: Colors.black,
                                                      width: 1.0),
                                                  borderRadius:
                                                      new BorderRadius.circular(
                                                          15.0),
                                                ),
                                                child: new Center(
                                                  child: new Text(
                                                    'SAVE',
                                                    style: new TextStyle(
                                                      fontSize: 18.0,
                                                      color: toska,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      shadows: [
                                                        Shadow(
                                                          blurRadius: 2.0,
                                                          color: Colors.white,
                                                          offset:
                                                              Offset(1.0, 1.0),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 10.0,
                                  left: 10.0,
                                  right: 10.0,
                                  bottom: 10.0),
                              height: panjang / 3.2,
                              width: lebar,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1.0),
                                borderRadius: new BorderRadius.only(
                                  topLeft: const Radius.circular(10.0),
                                  topRight: const Radius.circular(10.0),
                                  bottomLeft: const Radius.circular(10.0),
                                  bottomRight: const Radius.circular(10.0),
                                ),
                              ),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(top: 5.0),
                                    ),
                                    Text(
                                      'TEKS PESAN ALARM SHOLAT',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: toska,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    new ListTile(
                                      contentPadding: EdgeInsets.only(
                                          top: 15.0, left: 15.0),
                                      title: Column(
                                        children: <Widget>[
                                          TextField(
                                            controller: data3,
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            autofocus: false,
                                            decoration: InputDecoration(
                                              hintText: 'Teks Pesan Alarm',
                                              contentPadding:
                                                  EdgeInsets.fromLTRB(
                                                      10.0, 10.0, 20.0, 20.0),
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0)),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 5.0),
                                          ),
                                          TextField(
                                            controller: data4,
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            autofocus: false,
                                            decoration: InputDecoration(
                                              hintText: 'Teks Pesan Alarm',
                                              fillColor: Colors.white,
                                              contentPadding:
                                                  EdgeInsets.fromLTRB(
                                                      10.0, 10.0, 20.0, 20.0),
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0)),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 5.0),
                                          ),
                                          TextField(
                                            controller: data5,
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            autofocus: false,
                                            decoration: InputDecoration(
                                              hintText: 'Teks Pesan Alarm',
                                              fillColor: Colors.white,
                                              contentPadding:
                                                  EdgeInsets.fromLTRB(
                                                      10.0, 10.0, 20.0, 20.0),
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      trailing: new Container(
                                        width: lebar / 4,
                                        child: new Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: <Widget>[
                                            new InkWell(
                                              onTap: () {
                                                var teksalarm1 = data3.text +
                                                    "|" +
                                                    data4.text +
                                                    "|" +
                                                    data5.text;
                                                _onClear3();
                                                _popupDialog(context);
                                              },
                                              child: new Container(
                                                margin:
                                                    EdgeInsets.only(right: 4.0),
                                                //width: 100.0,
                                                height: lebar,
                                                width: panjang / 9,
                                                decoration: new BoxDecoration(
                                                  color: Color(0XFFA1E6EB),
                                                  border: new Border.all(
                                                      color: Colors.black,
                                                      width: 1.0),
                                                  borderRadius:
                                                      new BorderRadius.circular(
                                                          15.0),
                                                ),
                                                child: new Center(
                                                  child: new Text(
                                                    'SAVE',
                                                    style: new TextStyle(
                                                      fontSize: 18.0,
                                                      color: toska,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      shadows: [
                                                        Shadow(
                                                          blurRadius: 2.0,
                                                          color: Colors.white,
                                                          offset:
                                                              Offset(1.0, 1.0),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            _new(context),
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
      ),
    );
  }
}

Widget _new(BuildContext context) {
  var lebar = MediaQuery.of(context).size.width / 2.5;
  var panjang = MediaQuery.of(context).size.height;
  return Container(
    margin: EdgeInsets.only(
      top: 20.0,
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
              padding: EdgeInsets.only(top: 10.0),
            ),
            Text(
              'TEKS PESAN ALARM SHOLAT',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              'Untuk Menambahkan Pesan Berupa Alarm Pada Layar.',
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
              'TEKS PESAIN IQOMAH',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              'Untuk Menambahkan Teks Pesan Iqomah Kedalam Layar.',
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
              'TEKS PESAN JUMAT',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              'Untuk Menambahkan Peringatan Teks Jumat Kedalam Layar',
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
              'TEKS PESAN ALARM SHOLAT',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              'Menambahkan Peringatan Pesan Ke Layar Secara Berurutan.',
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
