import 'package:json_annotation/json_annotation.dart';

import 'access_token.dart';

part 'attributes.g.dart';

@JsonSerializable()
class Attributes {
  @JsonKey(name: 'access_token')
  AccessToken? accessToken;

  Attributes({this.accessToken});

  factory Attributes.fromJson(Map<String, dynamic> json) {
    return _$AttributesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AttributesToJson(this);
}
