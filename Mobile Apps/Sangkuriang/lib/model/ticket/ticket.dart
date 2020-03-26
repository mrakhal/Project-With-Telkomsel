class TicketModel {
  TicketModel({this.no_ticket, this.site_id, this.requestor, this.longitude, this.latitude, this.alamat, this.time_request, this.time_accept, this.time_backup, this.time_finish, this.meter_hour_before, this.meter_hour_after, this.meter_pln_before, this.meter_pln_after, this.photo_meter_hour_before, this.photo_meter_hour_after, this.photo_meter_pln_before, this.photo_meter_pln_after, this.status});

  String no_ticket;
  String site_id;
  String requestor;
  double longitude;
  double latitude;
  String alamat;
  String time_request;
  String time_accept;
  String time_backup;
  String time_finish;
  double meter_hour_before;
  double meter_hour_after;
  double meter_pln_before;
  double meter_pln_after;
  String photo_meter_hour_before;
  String photo_meter_hour_after;
  String photo_meter_pln_before;
  String photo_meter_pln_after;
  String status;


  factory TicketModel.fromJson(Map<String, dynamic> json) {
    return TicketModel(
      no_ticket: json['no_ticket'].toString() as String,
      site_id: json['site_id'] as String,
      requestor: json['requestor'] as String,
      longitude: json['longitude'] as double,
      latitude: json['latitude'] as double,
      alamat: json['alamat'] as String,
      time_request: json['time_request'].toString() as String,
      time_accept: json['time_accept'].toString() as String,
      time_backup: json['time_backup'].toString() as String,
      time_finish: json['time_finish'].toString() as String,
      meter_hour_before: json['meter_hour_before'] as double,
      meter_hour_after: json['meter_hour_after'] as double,
      meter_pln_before: json['meter_pln_before'] as double,
      meter_pln_after: json['meter_pln_after'] as double,
      photo_meter_hour_before: json['photo_meter_hour_before'].toString() as String,
      photo_meter_hour_after: json['photo_meter_hour_after'].toString() as String,
      photo_meter_pln_before: json['photo_meter_pln_before'].toString() as String,
      photo_meter_pln_after: json['photo_meter_pln_after'].toString() as String,
      status: json['status'].toString() as String,
    );
  }

  Map<String, dynamic> toMap() => {
    "no_ticket": no_ticket,
    "site_id": site_id,
    "requestor": requestor,
    "longitude": longitude,
    "latitude": latitude,
    "alamat": alamat,
    "time_request": time_request,
    "time_accept": time_accept,
    "time_backup": time_backup,
    "time_finish": time_finish,
    "meter_hour_before": meter_hour_before,
    "meter_hour_after": meter_hour_after,
    "meter_pln_before": meter_pln_before,
    "meter_pln_after": meter_pln_after,
    "photo_meter_hour_before": photo_meter_hour_before,
    "photo_meter_hour_after": photo_meter_hour_after,
    "photo_meter_pln_before": photo_meter_pln_before,
    "photo_meter_pln_after": photo_meter_pln_after,
    "status": status,
  };

  Map changeMap() {
    var map = new Map<String, dynamic>();
    map["no_ticket"] = no_ticket;
    map["site_id"] = site_id;
    map["requestor"] = requestor;
    map["longitude"] = longitude;
    map["latitude"] = latitude;
    map["alamat"] = alamat;
    map["time_request"] = time_request;
    map["time_accept"] = time_accept;
    map["time_backup"] = time_backup;
    map["time_finish"] = time_finish;
    map["meter_hour_before"] = meter_hour_before;
    map["meter_hour_after"] = meter_hour_after;
    map["meter_pln_before"] = meter_pln_before;
    map["meter_pln_after"] = meter_pln_after;
    map["photo_meter_hour_before"] = photo_meter_hour_before;
    map["photo_meter_hour_after"] = photo_meter_hour_after;
    map["photo_meter_pln_before"] = photo_meter_pln_before;
    map["photo_meter_pln_after"] = photo_meter_pln_after;
    map["status"] = status;

    return map;
  }
}