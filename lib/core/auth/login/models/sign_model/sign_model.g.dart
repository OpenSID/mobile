// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignModel _$SignModelFromJson(Map<String, dynamic> json) {
  return SignModel(
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SignModelToJson(SignModel instance) => <String, dynamic>{
      'data': instance.data,
    };
