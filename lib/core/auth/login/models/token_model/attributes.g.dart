// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attributes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Attributes _$AttributesFromJson(Map<String, dynamic> json) {
  return Attributes(
    accessToken: json['access_token'] == null
        ? null
        : AccessToken.fromJson(json['access_token'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AttributesToJson(Attributes instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
    };
