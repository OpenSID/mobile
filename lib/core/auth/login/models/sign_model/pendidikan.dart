import 'package:json_annotation/json_annotation.dart';

part 'pendidikan.g.dart';

@JsonSerializable()
class Pendidikan {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'nama')
  String? nama;

  Pendidikan({this.id, this.nama});

  factory Pendidikan.fromJson(Map<String, dynamic> json) {
    return _$PendidikanFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PendidikanToJson(this);
}
