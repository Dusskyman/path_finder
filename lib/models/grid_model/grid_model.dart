import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'grid_model.freezed.dart';
part 'grid_model.g.dart';

@freezed
class GridModel with _$GridModel {
  const factory GridModel({
    required String id,
    required List<String> field,
    required Map<String, int> start,
    required Map<String, int> end,
  }) = _GridModel;

  const GridModel._();

  List<List<String>> get proccedField =>
      field.map((line) => line.characters.map((e) => e).toList()).toList();
  String get formatedStartPoint => '(${start['x']}, ${start['y']})';
  String get formatedEndPoint => '(${end['x']}, ${end['y']})';

  factory GridModel.fromJson(Map<String, Object?> json) =>
      _$GridModelFromJson(json);
}
