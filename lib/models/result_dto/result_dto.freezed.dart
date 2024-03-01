// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResultDto _$ResultDtoFromJson(Map<String, dynamic> json) {
  return _ResultDto.fromJson(json);
}

/// @nodoc
mixin _$ResultDto {
  String get id => throw _privateConstructorUsedError;
  SubResult get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultDtoCopyWith<ResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultDtoCopyWith<$Res> {
  factory $ResultDtoCopyWith(ResultDto value, $Res Function(ResultDto) then) =
      _$ResultDtoCopyWithImpl<$Res, ResultDto>;
  @useResult
  $Res call({String id, SubResult result});

  $SubResultCopyWith<$Res> get result;
}

/// @nodoc
class _$ResultDtoCopyWithImpl<$Res, $Val extends ResultDto>
    implements $ResultDtoCopyWith<$Res> {
  _$ResultDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as SubResult,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubResultCopyWith<$Res> get result {
    return $SubResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultDtoImplCopyWith<$Res>
    implements $ResultDtoCopyWith<$Res> {
  factory _$$ResultDtoImplCopyWith(
          _$ResultDtoImpl value, $Res Function(_$ResultDtoImpl) then) =
      __$$ResultDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, SubResult result});

  @override
  $SubResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$ResultDtoImplCopyWithImpl<$Res>
    extends _$ResultDtoCopyWithImpl<$Res, _$ResultDtoImpl>
    implements _$$ResultDtoImplCopyWith<$Res> {
  __$$ResultDtoImplCopyWithImpl(
      _$ResultDtoImpl _value, $Res Function(_$ResultDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? result = null,
  }) {
    return _then(_$ResultDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as SubResult,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ResultDtoImpl implements _ResultDto {
  const _$ResultDtoImpl({required this.id, required this.result});

  factory _$ResultDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultDtoImplFromJson(json);

  @override
  final String id;
  @override
  final SubResult result;

  @override
  String toString() {
    return 'ResultDto(id: $id, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultDtoImplCopyWith<_$ResultDtoImpl> get copyWith =>
      __$$ResultDtoImplCopyWithImpl<_$ResultDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultDtoImplToJson(
      this,
    );
  }
}

abstract class _ResultDto implements ResultDto {
  const factory _ResultDto(
      {required final String id,
      required final SubResult result}) = _$ResultDtoImpl;

  factory _ResultDto.fromJson(Map<String, dynamic> json) =
      _$ResultDtoImpl.fromJson;

  @override
  String get id;
  @override
  SubResult get result;
  @override
  @JsonKey(ignore: true)
  _$$ResultDtoImplCopyWith<_$ResultDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubResult _$SubResultFromJson(Map<String, dynamic> json) {
  return _SubResult.fromJson(json);
}

/// @nodoc
mixin _$SubResult {
  List<ResultField> get steps => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubResultCopyWith<SubResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubResultCopyWith<$Res> {
  factory $SubResultCopyWith(SubResult value, $Res Function(SubResult) then) =
      _$SubResultCopyWithImpl<$Res, SubResult>;
  @useResult
  $Res call({List<ResultField> steps, String path});
}

/// @nodoc
class _$SubResultCopyWithImpl<$Res, $Val extends SubResult>
    implements $SubResultCopyWith<$Res> {
  _$SubResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? steps = null,
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<ResultField>,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubResultImplCopyWith<$Res>
    implements $SubResultCopyWith<$Res> {
  factory _$$SubResultImplCopyWith(
          _$SubResultImpl value, $Res Function(_$SubResultImpl) then) =
      __$$SubResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ResultField> steps, String path});
}

/// @nodoc
class __$$SubResultImplCopyWithImpl<$Res>
    extends _$SubResultCopyWithImpl<$Res, _$SubResultImpl>
    implements _$$SubResultImplCopyWith<$Res> {
  __$$SubResultImplCopyWithImpl(
      _$SubResultImpl _value, $Res Function(_$SubResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? steps = null,
    Object? path = null,
  }) {
    return _then(_$SubResultImpl(
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<ResultField>,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SubResultImpl implements _SubResult {
  const _$SubResultImpl(
      {required final List<ResultField> steps, required this.path})
      : _steps = steps;

  factory _$SubResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubResultImplFromJson(json);

  final List<ResultField> _steps;
  @override
  List<ResultField> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  final String path;

  @override
  String toString() {
    return 'SubResult(steps: $steps, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubResultImpl &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_steps), path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubResultImplCopyWith<_$SubResultImpl> get copyWith =>
      __$$SubResultImplCopyWithImpl<_$SubResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubResultImplToJson(
      this,
    );
  }
}

abstract class _SubResult implements SubResult {
  const factory _SubResult(
      {required final List<ResultField> steps,
      required final String path}) = _$SubResultImpl;

  factory _SubResult.fromJson(Map<String, dynamic> json) =
      _$SubResultImpl.fromJson;

  @override
  List<ResultField> get steps;
  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$$SubResultImplCopyWith<_$SubResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultField _$ResultFieldFromJson(Map<String, dynamic> json) {
  return _ResultField.fromJson(json);
}

/// @nodoc
mixin _$ResultField {
  String get x => throw _privateConstructorUsedError;
  String get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultFieldCopyWith<ResultField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultFieldCopyWith<$Res> {
  factory $ResultFieldCopyWith(
          ResultField value, $Res Function(ResultField) then) =
      _$ResultFieldCopyWithImpl<$Res, ResultField>;
  @useResult
  $Res call({String x, String y});
}

/// @nodoc
class _$ResultFieldCopyWithImpl<$Res, $Val extends ResultField>
    implements $ResultFieldCopyWith<$Res> {
  _$ResultFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultFieldImplCopyWith<$Res>
    implements $ResultFieldCopyWith<$Res> {
  factory _$$ResultFieldImplCopyWith(
          _$ResultFieldImpl value, $Res Function(_$ResultFieldImpl) then) =
      __$$ResultFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String x, String y});
}

/// @nodoc
class __$$ResultFieldImplCopyWithImpl<$Res>
    extends _$ResultFieldCopyWithImpl<$Res, _$ResultFieldImpl>
    implements _$$ResultFieldImplCopyWith<$Res> {
  __$$ResultFieldImplCopyWithImpl(
      _$ResultFieldImpl _value, $Res Function(_$ResultFieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$ResultFieldImpl(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ResultFieldImpl implements _ResultField {
  const _$ResultFieldImpl({required this.x, required this.y});

  factory _$ResultFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultFieldImplFromJson(json);

  @override
  final String x;
  @override
  final String y;

  @override
  String toString() {
    return 'ResultField(x: $x, y: $y)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultFieldImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultFieldImplCopyWith<_$ResultFieldImpl> get copyWith =>
      __$$ResultFieldImplCopyWithImpl<_$ResultFieldImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultFieldImplToJson(
      this,
    );
  }
}

abstract class _ResultField implements ResultField {
  const factory _ResultField(
      {required final String x, required final String y}) = _$ResultFieldImpl;

  factory _ResultField.fromJson(Map<String, dynamic> json) =
      _$ResultFieldImpl.fromJson;

  @override
  String get x;
  @override
  String get y;
  @override
  @JsonKey(ignore: true)
  _$$ResultFieldImplCopyWith<_$ResultFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
