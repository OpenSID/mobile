import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'sign_model.g.dart';

@JsonSerializable()
class SignModel {
  @JsonKey(name: 'data')
  Data? data;

  SignModel({this.data});

  factory SignModel.fromJson(Map<String, dynamic> json) {
    return _$SignModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SignModelToJson(this);
}
