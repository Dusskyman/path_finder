// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponceModelImpl _$$BaseResponceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseResponceModelImpl(
      error: json['error'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$BaseResponceModelImplToJson(
        _$BaseResponceModelImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'data': instance.data,
    };
