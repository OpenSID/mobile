import 'package:json_annotation/json_annotation.dart';

import 'attributes.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'attributes')
  Attributes? attributes;

  Data({this.type, this.id, this.attributes});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
