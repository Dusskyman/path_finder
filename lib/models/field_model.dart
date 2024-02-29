import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'field_model.freezed.dart';
part 'field_model.g.dart';

@freezed
class FieldModel with _$FieldModel {
  const factory FieldModel({
    required String id,
    required List<String> field,
    required Map<String, int> start,
    required Map<String, int> end,
  }) = _FieldModel;

  const FieldModel._();

  List<List<String>> get proccedField =>
      field.map((line) => line.characters.map((e) => e).toList()).toList();
  String get formatedStartPoint => '(${start['x']}, ${start['y']})';
  String get formatedEndPoint => '(${end['x']}, ${end['y']})';

  factory FieldModel.fromJson(Map<String, Object?> json) =>
      _$FieldModelFromJson(json);
}
