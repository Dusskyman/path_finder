// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FieldModel _$$_FieldModelFromJson(Map<String, dynamic> json) =>
    _$_FieldModel(
      id: json['id'] as String,
      field: (json['field'] as List<dynamic>).map((e) => e as String).toList(),
      start: Map<String, int>.from(json['start'] as Map),
      end: Map<String, int>.from(json['end'] as Map),
    );

Map<String, dynamic> _$$_FieldModelToJson(_$_FieldModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'field': instance.field,
      'start': instance.start,
      'end': instance.end,
    };
