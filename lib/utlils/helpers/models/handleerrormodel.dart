import 'package:json_annotation/json_annotation.dart';

import 'messages.dart';

part 'handleerrormodel.g.dart';

@JsonSerializable()
class Handleerrormodel {
  @JsonKey(name: 'code')
  int? code;
  @JsonKey(name: 'messages')
  Messages? messages;

  Handleerrormodel({this.code, this.messages});

  factory Handleerrormodel.fromJson(Map<String, dynamic> json) {
    return _$HandleerrormodelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HandleerrormodelToJson(this);
}
