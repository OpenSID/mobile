import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'token_model.g.dart';

@JsonSerializable()
class TokenModel {
  @JsonKey(name: 'data')
  Data? data;

  TokenModel({this.data});

  factory TokenModel.fromJson(Map<String, dynamic> json) {
    return _$TokenModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TokenModelToJson(this);
}
