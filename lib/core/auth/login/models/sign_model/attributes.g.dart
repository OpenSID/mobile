// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attributes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Attributes _$AttributesFromJson(Map<String, dynamic> json) {
  return Attributes(
    foto: json['foto'] as String?,
    nama: json['nama'] as String?,
    nik: json['nik'] as String?,
    tempatLahir: json['tempat_lahir'] as String?,
    tanggalLahir: json['tanggal_lahir'] as String?,
    sex: json['sex'] == null
        ? null
        : Sex.fromJson(json['sex'] as Map<String, dynamic>),
    agama: json['agama'] == null
        ? null
        : Agama.fromJson(json['agama'] as Map<String, dynamic>),
    pendidikan: json['pendidikan'] == null
        ? null
        : Pendidikan.fromJson(json['pendidikan'] as Map<String, dynamic>),
    pekerjaan: json['pekerjaan'] == null
        ? null
        : Pekerjaan.fromJson(json['pekerjaan'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AttributesToJson(Attributes instance) =>
    <String, dynamic>{
      'foto': instance.foto,
      'nama': instance.nama,
      'nik': instance.nik,
      'tempat_lahir': instance.tempatLahir,
      'tanggal_lahir': instance.tanggalLahir,
      'sex': instance.sex,
      'agama': instance.agama,
      'pendidikan': instance.pendidikan,
      'pekerjaan': instance.pekerjaan,
    };
