// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GridModelImpl _$$GridModelImplFromJson(Map<String, dynamic> json) =>
    _$GridModelImpl(
      id: json['id'] as String,
      field: (json['field'] as List<dynamic>).map((e) => e as String).toList(),
      start: Map<String, int>.from(json['start'] as Map),
      end: Map<String, int>.from(json['end'] as Map),
    );

Map<String, dynamic> _$$GridModelImplToJson(_$GridModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'field': instance.field,
      'start': instance.start,
      'end': instance.end,
    };
