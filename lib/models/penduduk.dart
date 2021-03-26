// To parse this JSON data, do
//
//     final penduduk = pendudukFromJson(jsonString);

import 'dart:convert';

Penduduk pendudukFromJson(String str) => Penduduk.fromJson(json.decode(str));

String pendudukToJson(Penduduk data) => json.encode(data.toJson());

class Penduduk {
  Penduduk({
    this.data,
  });

  Data data;

  Penduduk copyWith({
    Data data,
  }) =>
      Penduduk(
        data: data ?? this.data,
      );

  factory Penduduk.fromJson(Map<String, dynamic> json) => Penduduk(
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null ? null : data.toJson(),
      };
}

class Data {
  Data({
    this.type,
    this.id,
    this.attributes,
  });

  String type;
  String id;
  Attributes attributes;

  Data copyWith({
    String type,
    String id,
    Attributes attributes,
  }) =>
      Data(
        type: type ?? this.type,
        id: id ?? this.id,
        attributes: attributes ?? this.attributes,
      );

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        type: json["type"] == null ? null : json["type"],
        id: json["id"] == null ? null : json["id"],
        attributes: json["attributes"] == null
            ? null
            : Attributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "type": type == null ? null : type,
        "id": id == null ? null : id,
        "attributes": attributes == null ? null : attributes.toJson(),
      };
}

class Attributes {
  Attributes({
    this.accessToken,
    this.foto,
    this.nama,
    this.nik,
    this.tempatLahir,
    this.tanggalLahir,
    this.sex,
    this.agama,
    this.pendidikan,
    this.pekerjaan,
  });

  AccessToken accessToken;
  String foto;
  String nama;
  String nik;
  String tempatLahir;
  DateTime tanggalLahir;
  Agama sex;
  Agama agama;
  Agama pendidikan;
  Agama pekerjaan;

  Attributes copyWith({
    AccessToken accessToken,
    String foto,
    String nama,
    String nik,
    String tempatLahir,
    DateTime tanggalLahir,
    Agama sex,
    Agama agama,
    Agama pendidikan,
    Agama pekerjaan,
  }) =>
      Attributes(
        accessToken: accessToken ?? this.accessToken,
        foto: foto ?? this.foto,
        nama: nama ?? this.nama,
        nik: nik ?? this.nik,
        tempatLahir: tempatLahir ?? this.tempatLahir,
        tanggalLahir: tanggalLahir ?? this.tanggalLahir,
        sex: sex ?? this.sex,
        agama: agama ?? this.agama,
        pendidikan: pendidikan ?? this.pendidikan,
        pekerjaan: pekerjaan ?? this.pekerjaan,
      );

  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
        accessToken: json["access_token"] == null
            ? null
            : AccessToken.fromJson(json["access_token"]),
        foto: json["foto"] == null ? null : json["foto"],
        nama: json["nama"] == null ? null : json["nama"],
        nik: json["nik"] == null ? null : json["nik"],
        tempatLahir: json["tempat_lahir"] == null ? null : json["tempat_lahir"],
        tanggalLahir: json["tanggal_lahir"] == null
            ? null
            : DateTime.parse(json["tanggal_lahir"]),
        sex: json["sex"] == null ? null : Agama.fromJson(json["sex"]),
        agama: json["agama"] == null ? null : Agama.fromJson(json["agama"]),
        pendidikan: json["pendidikan"] == null
            ? null
            : Agama.fromJson(json["pendidikan"]),
        pekerjaan: json["pekerjaan"] == null
            ? null
            : Agama.fromJson(json["pekerjaan"]),
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken == null ? null : accessToken.toJson(),
        "foto": foto == null ? null : foto,
        "nama": nama == null ? null : nama,
        "nik": nik == null ? null : nik,
        "tempat_lahir": tempatLahir == null ? null : tempatLahir,
        "tanggal_lahir": tanggalLahir == null
            ? null
            : "${tanggalLahir.year.toString().padLeft(4, '0')}-${tanggalLahir.month.toString().padLeft(2, '0')}-${tanggalLahir.day.toString().padLeft(2, '0')}",
        "sex": sex == null ? null : sex.toJson(),
        "agama": agama == null ? null : agama.toJson(),
        "pendidikan": pendidikan == null ? null : pendidikan.toJson(),
        "pekerjaan": pekerjaan == null ? null : pekerjaan.toJson(),
      };
}

class AccessToken {
  AccessToken({
    this.token,
    this.tokenType,
    this.expiresIn,
  });

  String token;
  String tokenType;
  int expiresIn;

  AccessToken copyWith({
    String token,
    String tokenType,
    int expiresIn,
  }) =>
      AccessToken(
        token: token ?? this.token,
        tokenType: tokenType ?? this.tokenType,
        expiresIn: expiresIn ?? this.expiresIn,
      );

  factory AccessToken.fromJson(Map<String, dynamic> json) => AccessToken(
        token: json["token"] == null ? null : json["token"],
        tokenType: json["token_type"] == null ? null : json["token_type"],
        expiresIn: json["expires_in"] == null ? null : json["expires_in"],
      );

  Map<String, dynamic> toJson() => {
        "token": token == null ? null : token,
        "token_type": tokenType == null ? null : tokenType,
        "expires_in": expiresIn == null ? null : expiresIn,
      };
}

class Agama {
  Agama({
    this.id,
    this.nama,
  });

  int id;
  String nama;

  Agama copyWith({
    int id,
    String nama,
  }) =>
      Agama(
        id: id ?? this.id,
        nama: nama ?? this.nama,
      );

  factory Agama.fromJson(Map<String, dynamic> json) => Agama(
        id: json["id"] == null ? null : json["id"],
        nama: json["nama"] == null ? null : json["nama"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "nama": nama == null ? null : nama,
      };
}
