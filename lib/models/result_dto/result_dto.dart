// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_dto.freezed.dart';
part 'result_dto.g.dart';

@freezed
class ResultDto with _$ResultDto {
  @JsonSerializable(explicitToJson: true)
  const factory ResultDto({
    required String id,
    required SubResult result,
  }) = _ResultDto;

  factory ResultDto.fromJson(Map<String, Object?> json) =>
      _$ResultDtoFromJson(json);
}

@freezed
class SubResult with _$SubResult {
  @JsonSerializable(explicitToJson: true)
  const factory SubResult({
    required List<ResultField> steps,
    required String path,
  }) = _SubResult;

  factory SubResult.fromJson(Map<String, Object?> json) =>
      _$SubResultFromJson(json);
}

@freezed
class ResultField with _$ResultField {
  @JsonSerializable(explicitToJson: true)
  const factory ResultField({
    required String x,
    required String y,
  }) = _ResultField;

  factory ResultField.fromJson(Map<String, Object?> json) =>
      _$ResultFieldFromJson(json);
}
