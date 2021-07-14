import 'package:json_annotation/json_annotation.dart';

part 'sex.g.dart';

@JsonSerializable()
class Sex {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'nama')
  String? nama;

  Sex({this.id, this.nama});

  factory Sex.fromJson(Map<String, dynamic> json) => _$SexFromJson(json);

  Map<String, dynamic> toJson() => _$SexToJson(this);
}
