import 'package:json_annotation/json_annotation.dart';

part 'access_token.g.dart';

@JsonSerializable()
class AccessToken {
  @JsonKey(name: 'token')
  String? token;
  @JsonKey(name: 'token_type')
  String? tokenType;
  @JsonKey(name: 'expires_in')
  int? expiresIn;

  AccessToken({this.token, this.tokenType, this.expiresIn});

  factory AccessToken.fromJson(Map<String, dynamic> json) {
    return _$AccessTokenFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AccessTokenToJson(this);
}
