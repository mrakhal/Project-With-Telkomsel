import 'package:url_launcher/url_launcher.dart';

class Vars {
  static const String fullname = "LISA BLACKPINK";
  static const String site = "BDG500";
  static const String lokasi = "BANDUNG";
  static const String status = "CLEAR";
  static const String status1 = "DOWN";
  static const String request = "BACKUP";
  static const String id = "MBPNIK098871241";
  static const String alamat =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised.";
  static const String time = "2019-06-17 13:00:00";
  static const String bio1 =
      "\"Sangkuriang adalah layanan mobile apps online mudah & efisien, yang memberikan kemudahan bagi para pengguna dalam melakukan pekerjaan. Aplikasi ini pertama kali dibuat pada awal tahun 2019\"";

  static void openDialog(BuildContext context, AlertDialog dialog) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return dialog;
        });
  }
}

class MapUtils {
  static openMap(double latitude, double longitude) async {
    String googleUrl =
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      throw 'Could not open the map.';
    }
  }

  static openRoute(double latitude1, double longitude1, double latitude2,
      double longitude2) async {
    String googleUrl =
        'https://www.google.com/maps?saddr=$latitude1,$longitude1&daddr=$latitude2,$longitude2';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      throw 'Could not open the map.';
    }
  }
}
