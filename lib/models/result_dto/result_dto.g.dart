// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultDtoImpl _$$ResultDtoImplFromJson(Map<String, dynamic> json) =>
    _$ResultDtoImpl(
      id: json['id'] as String,
      result: SubResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResultDtoImplToJson(_$ResultDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'result': instance.result.toJson(),
    };

_$SubResultImpl _$$SubResultImplFromJson(Map<String, dynamic> json) =>
    _$SubResultImpl(
      steps: (json['steps'] as List<dynamic>)
          .map((e) => ResultField.fromJson(e as Map<String, dynamic>))
          .toList(),
      path: json['path'] as String,
    );

Map<String, dynamic> _$$SubResultImplToJson(_$SubResultImpl instance) =>
    <String, dynamic>{
      'steps': instance.steps.map((e) => e.toJson()).toList(),
      'path': instance.path,
    };

_$ResultFieldImpl _$$ResultFieldImplFromJson(Map<String, dynamic> json) =>
    _$ResultFieldImpl(
      x: json['x'] as String,
      y: json['y'] as String,
    );

Map<String, dynamic> _$$ResultFieldImplToJson(_$ResultFieldImpl instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };
