import 'package:json_annotation/json_annotation.dart';

import 'agama.dart';
import 'pekerjaan.dart';
import 'pendidikan.dart';
import 'sex.dart';

part 'attributes.g.dart';

@JsonSerializable()
class Attributes {
  @JsonKey(name: 'foto')
  String? foto;
  @JsonKey(name: 'nama')
  String? nama;
  @JsonKey(name: 'nik')
  String? nik;
  @JsonKey(name: 'tempat_lahir')
  String? tempatLahir;
  @JsonKey(name: 'tanggal_lahir')
  String? tanggalLahir;
  @JsonKey(name: 'sex')
  Sex? sex;
  @JsonKey(name: 'agama')
  Agama? agama;
  @JsonKey(name: 'pendidikan')
  Pendidikan? pendidikan;
  @JsonKey(name: 'pekerjaan')
  Pekerjaan? pekerjaan;

  Attributes({
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

  factory Attributes.fromJson(Map<String, dynamic> json) {
    return _$AttributesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AttributesToJson(this);
}
