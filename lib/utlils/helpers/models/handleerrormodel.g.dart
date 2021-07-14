// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'handleerrormodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Handleerrormodel _$HandleerrormodelFromJson(Map<String, dynamic> json) {
  return Handleerrormodel(
    code: json['code'] as int?,
    messages: json['messages'] == null
        ? null
        : Messages.fromJson(json['messages'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HandleerrormodelToJson(Handleerrormodel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'messages': instance.messages,
    };
