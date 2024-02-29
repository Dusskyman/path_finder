// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FieldModel _$FieldModelFromJson(Map<String, dynamic> json) {
  return _FieldModel.fromJson(json);
}

/// @nodoc
mixin _$FieldModel {
  String get id => throw _privateConstructorUsedError;
  List<String> get field => throw _privateConstructorUsedError;
  Map<String, int> get start => throw _privateConstructorUsedError;
  Map<String, int> get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldModelCopyWith<FieldModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldModelCopyWith<$Res> {
  factory $FieldModelCopyWith(
          FieldModel value, $Res Function(FieldModel) then) =
      _$FieldModelCopyWithImpl<$Res, FieldModel>;
  @useResult
  $Res call(
      {String id,
      List<String> field,
      Map<String, int> start,
      Map<String, int> end});
}

/// @nodoc
class _$FieldModelCopyWithImpl<$Res, $Val extends FieldModel>
    implements $FieldModelCopyWith<$Res> {
  _$FieldModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? field = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as List<String>,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FieldModelCopyWith<$Res>
    implements $FieldModelCopyWith<$Res> {
  factory _$$_FieldModelCopyWith(
          _$_FieldModel value, $Res Function(_$_FieldModel) then) =
      __$$_FieldModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<String> field,
      Map<String, int> start,
      Map<String, int> end});
}

/// @nodoc
class __$$_FieldModelCopyWithImpl<$Res>
    extends _$FieldModelCopyWithImpl<$Res, _$_FieldModel>
    implements _$$_FieldModelCopyWith<$Res> {
  __$$_FieldModelCopyWithImpl(
      _$_FieldModel _value, $Res Function(_$_FieldModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? field = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$_FieldModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      field: null == field
          ? _value._field
          : field // ignore: cast_nullable_to_non_nullable
              as List<String>,
      start: null == start
          ? _value._start
          : start // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      end: null == end
          ? _value._end
          : end // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FieldModel extends _FieldModel {
  const _$_FieldModel(
      {required this.id,
      required final List<String> field,
      required final Map<String, int> start,
      required final Map<String, int> end})
      : _field = field,
        _start = start,
        _end = end,
        super._();

  factory _$_FieldModel.fromJson(Map<String, dynamic> json) =>
      _$$_FieldModelFromJson(json);

  @override
  final String id;
  final List<String> _field;
  @override
  List<String> get field {
    if (_field is EqualUnmodifiableListView) return _field;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_field);
  }

  final Map<String, int> _start;
  @override
  Map<String, int> get start {
    if (_start is EqualUnmodifiableMapView) return _start;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_start);
  }

  final Map<String, int> _end;
  @override
  Map<String, int> get end {
    if (_end is EqualUnmodifiableMapView) return _end;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_end);
  }

  @override
  String toString() {
    return 'FieldModel(id: $id, field: $field, start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FieldModel &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._field, _field) &&
            const DeepCollectionEquality().equals(other._start, _start) &&
            const DeepCollectionEquality().equals(other._end, _end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_field),
      const DeepCollectionEquality().hash(_start),
      const DeepCollectionEquality().hash(_end));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FieldModelCopyWith<_$_FieldModel> get copyWith =>
      __$$_FieldModelCopyWithImpl<_$_FieldModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FieldModelToJson(
      this,
    );
  }
}

abstract class _FieldModel extends FieldModel {
  const factory _FieldModel(
      {required final String id,
      required final List<String> field,
      required final Map<String, int> start,
      required final Map<String, int> end}) = _$_FieldModel;
  const _FieldModel._() : super._();

  factory _FieldModel.fromJson(Map<String, dynamic> json) =
      _$_FieldModel.fromJson;

  @override
  String get id;
  @override
  List<String> get field;
  @override
  Map<String, int> get start;
  @override
  Map<String, int> get end;
  @override
  @JsonKey(ignore: true)
  _$$_FieldModelCopyWith<_$_FieldModel> get copyWith =>
      throw _privateConstructorUsedError;
}
