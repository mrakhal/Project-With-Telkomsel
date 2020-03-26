class UsersModel {
  UsersModel({this.username, this.password, this.status, this.fullname, this.id_nik, this.cluster, this.foto});

  String username;
  String password;
  int status;
  String fullname;
  String id_nik;
  String cluster;
  String foto;

  factory UsersModel.fromJson(Map<String, dynamic> json) {
    return UsersModel(
      username: json['username'] as String,
      password: json['password'] as String,
      status: json['status'] as int,
      fullname: json['fullname'] as String,
      id_nik: json['id_nik'].toString() as String,
      cluster: json['cluster'] as String,
      foto: json['foto'] as String,
    );
  }

  Map<String, dynamic> toMap() => {
    "username": username,
    "password": password,
    "status": status,
    "fullname": fullname,
    "id_nik": id_nik,
    "cluster": cluster,
    "foto": foto,
  };

  Map<String, dynamic> toMapLogin() => {
    "username": username,
    "password": password,
  };

  Map changeMapLogin() {
    var map = new Map<String, dynamic>();
    map["username"] = username;
    map["password"] = password;

    return map;
  }

  Map changeMap() {
    var map = new Map<String, dynamic>();
    map["username"] = username;
    map["password"] = password;
    map["status"] = status;
    map["fullname"] = fullname;
    map["id_nik"] = id_nik;
    map["cluster"] = cluster;
    map["foto"] = foto;

    return map;
  }
}