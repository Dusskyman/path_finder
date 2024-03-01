// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_responce_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponceModel _$BaseResponceModelFromJson(Map<String, dynamic> json) {
  return _BaseResponceModel.fromJson(json);
}

/// @nodoc
mixin _$BaseResponceModel {
  bool get error => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseResponceModelCopyWith<BaseResponceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponceModelCopyWith<$Res> {
  factory $BaseResponceModelCopyWith(
          BaseResponceModel value, $Res Function(BaseResponceModel) then) =
      _$BaseResponceModelCopyWithImpl<$Res, BaseResponceModel>;
  @useResult
  $Res call({bool error, String message, List<Map<String, dynamic>> data});
}

/// @nodoc
class _$BaseResponceModelCopyWithImpl<$Res, $Val extends BaseResponceModel>
    implements $BaseResponceModelCopyWith<$Res> {
  _$BaseResponceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponceModelImplCopyWith<$Res>
    implements $BaseResponceModelCopyWith<$Res> {
  factory _$$BaseResponceModelImplCopyWith(_$BaseResponceModelImpl value,
          $Res Function(_$BaseResponceModelImpl) then) =
      __$$BaseResponceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool error, String message, List<Map<String, dynamic>> data});
}

/// @nodoc
class __$$BaseResponceModelImplCopyWithImpl<$Res>
    extends _$BaseResponceModelCopyWithImpl<$Res, _$BaseResponceModelImpl>
    implements _$$BaseResponceModelImplCopyWith<$Res> {
  __$$BaseResponceModelImplCopyWithImpl(_$BaseResponceModelImpl _value,
      $Res Function(_$BaseResponceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$BaseResponceModelImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseResponceModelImpl implements _BaseResponceModel {
  const _$BaseResponceModelImpl(
      {required this.error,
      required this.message,
      required final List<Map<String, dynamic>> data})
      : _data = data;

  factory _$BaseResponceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseResponceModelImplFromJson(json);

  @override
  final bool error;
  @override
  final String message;
  final List<Map<String, dynamic>> _data;
  @override
  List<Map<String, dynamic>> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BaseResponceModel(error: $error, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponceModelImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, error, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponceModelImplCopyWith<_$BaseResponceModelImpl> get copyWith =>
      __$$BaseResponceModelImplCopyWithImpl<_$BaseResponceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponceModelImplToJson(
      this,
    );
  }
}

abstract class _BaseResponceModel implements BaseResponceModel {
  const factory _BaseResponceModel(
          {required final bool error,
          required final String message,
          required final List<Map<String, dynamic>> data}) =
      _$BaseResponceModelImpl;

  factory _BaseResponceModel.fromJson(Map<String, dynamic> json) =
      _$BaseResponceModelImpl.fromJson;

  @override
  bool get error;
  @override
  String get message;
  @override
  List<Map<String, dynamic>> get data;
  @override
  @JsonKey(ignore: true)
  _$$BaseResponceModelImplCopyWith<_$BaseResponceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
