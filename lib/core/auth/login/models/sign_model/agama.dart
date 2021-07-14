import 'package:json_annotation/json_annotation.dart';

part 'agama.g.dart';

@JsonSerializable()
class Agama {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'nama')
  String? nama;

  Agama({this.id, this.nama});

  factory Agama.fromJson(Map<String, dynamic> json) => _$AgamaFromJson(json);

  Map<String, dynamic> toJson() => _$AgamaToJson(this);
}
