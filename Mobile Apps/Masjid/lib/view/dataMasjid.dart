import 'package:flutter/material.dart';
// import 'package:toast/toast.dart';

class DataMasjid extends StatefulWidget {
  _DataMasjidState createState() => new _DataMasjidState();
}

class _DataMasjidState extends State<DataMasjid> {
  final Color color1 = Color(0xffFA696C);
  final Color color2 = Color(0xffFA8165);
  final Color color3 = Color(0xffFB8964);
  TextEditingController textEditingController = new TextEditingController();
  TextEditingController textEditingController1 = new TextEditingController();
  TextEditingController textEditingController2 = new TextEditingController();
  TextEditingController textEditingController3 = new TextEditingController();

  _onClear() {
    setState(() {
      textEditingController.text = "";
      textEditingController1.text = "";
      textEditingController2.text = "";
      textEditingController3.text = "";
    });
  }

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
                        'DATA MASJID',
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
                      padding: EdgeInsets.only(top: 10.0),
                      width: lebar,
                      height: panjang / 1.0,
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
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(top: 5.0),
                                    ),
                                    Text(
                                      'DATA MASJID',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: toska,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    new ListTile(
                                      leading: Text(
                                        'NAMA MASJID',
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      title: Container(
                                        child: new TextField(
                                          keyboardType: TextInputType.text,
                                          controller: textEditingController,
                                          decoration: new InputDecoration(
                                              hintText: "Masukkan Nama Masjid",
                                              border: OutlineInputBorder()),
                                        ),
                                      ),
                                      contentPadding: EdgeInsets.only(
                                          top: 15.0, left: 15.0),
                                    ),
                                    new ListTile(
                                      leading: Text(
                                        'ALAMAT',
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      title: Container(
                                        padding: EdgeInsets.only(left: 40.0),
                                        child: new TextField(
                                          controller: textEditingController1,
                                          decoration: new InputDecoration(
                                              hintText: "Alamat",
                                              border: OutlineInputBorder()),
                                        ),
                                      ),
                                      contentPadding: EdgeInsets.only(
                                          top: 15.0, left: 15.0),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.only(top: 20.0, left: 15),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'LOKASI KOORDINAT',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              color: toska,
                                              fontSize: 15.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 20.0),
                                      child: new Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          new Flexible(
                                            child: Container(
                                              width: lebar / 2.5,
                                              height: panjang / 10,
                                              child: new TextField(
                                                keyboardType:
                                                    TextInputType.number,
                                                controller:
                                                    textEditingController2,
                                                decoration: new InputDecoration(
                                                  hintText: "LONGITUDE",
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(40.0),
                                                    ),
                                                  ),
                                                ),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .body1,
                                              ),
                                            ),
                                          ),
                                          new Flexible(
                                            child: Container(
                                              width: lebar / 2.5,
                                              height: panjang / 10,
                                              child: new TextField(
                                                keyboardType:
                                                    TextInputType.number,
                                                controller:
                                                    textEditingController3,
                                                decoration: InputDecoration(
                                                  hintText: "LATITUDE",
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(40.0),
                                                    ),
                                                  ),
                                                ),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .body1,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    new InkWell(
                                      onTap: () {
                                        var datamasjid =
                                            textEditingController.text +
                                                "|" +
                                                textEditingController1.text +
                                                "|" +
                                                textEditingController2.text +
                                                "|" +
                                                textEditingController3.text;
                                        print(datamasjid);
                                        _onClear();
                                        // Toast.show(
                                        //     "Berhasil Update Data Masjid",
                                        //     context,
                                        //     duration: Toast.LENGTH_LONG,
                                        //     gravity: Toast.CENTER);
                                        _popupDialog(context);
                                      },
                                      child: new Container(
                                        margin: EdgeInsets.only(top: 30.0),
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
                                    _new(context),
                                  ],
                                ),
                              ),
                            ),
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
      top: 40.0,
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
