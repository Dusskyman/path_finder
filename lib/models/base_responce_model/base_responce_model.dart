import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_responce_model.freezed.dart';
part 'base_responce_model.g.dart';

@freezed
class BaseResponceModel with _$BaseResponceModel {
  const factory BaseResponceModel({
    required bool error,
    required String message,
    required List<Map<String, dynamic>> data,
  }) = _BaseResponceModel;

  factory BaseResponceModel.fromJson(Map<String, Object?> json) =>
      _$BaseResponceModelFromJson(json);
}
