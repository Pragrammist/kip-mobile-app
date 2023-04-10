// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'film_fees.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilmFeesModel _$FilmFeesModelFromJson(Map<String, dynamic> json) {
  return _FilmFees.fromJson(json);
}

/// @nodoc
mixin _$FilmFeesModel {
  String get name => throw _privateConstructorUsedError;
  int get fees => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilmFeesModelCopyWith<FilmFeesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmFeesModelCopyWith<$Res> {
  factory $FilmFeesModelCopyWith(
          FilmFeesModel value, $Res Function(FilmFeesModel) then) =
      _$FilmFeesModelCopyWithImpl<$Res, FilmFeesModel>;
  @useResult
  $Res call({String name, int fees});
}

/// @nodoc
class _$FilmFeesModelCopyWithImpl<$Res, $Val extends FilmFeesModel>
    implements $FilmFeesModelCopyWith<$Res> {
  _$FilmFeesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fees = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fees: null == fees
          ? _value.fees
          : fees // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilmFeesCopyWith<$Res>
    implements $FilmFeesModelCopyWith<$Res> {
  factory _$$_FilmFeesCopyWith(
          _$_FilmFees value, $Res Function(_$_FilmFees) then) =
      __$$_FilmFeesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int fees});
}

/// @nodoc
class __$$_FilmFeesCopyWithImpl<$Res>
    extends _$FilmFeesModelCopyWithImpl<$Res, _$_FilmFees>
    implements _$$_FilmFeesCopyWith<$Res> {
  __$$_FilmFeesCopyWithImpl(
      _$_FilmFees _value, $Res Function(_$_FilmFees) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fees = null,
  }) {
    return _then(_$_FilmFees(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fees: null == fees
          ? _value.fees
          : fees // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilmFees implements _FilmFees {
  const _$_FilmFees({required this.name, required this.fees});

  factory _$_FilmFees.fromJson(Map<String, dynamic> json) =>
      _$$_FilmFeesFromJson(json);

  @override
  final String name;
  @override
  final int fees;

  @override
  String toString() {
    return 'FilmFeesModel(name: $name, fees: $fees)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilmFees &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fees, fees) || other.fees == fees));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, fees);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilmFeesCopyWith<_$_FilmFees> get copyWith =>
      __$$_FilmFeesCopyWithImpl<_$_FilmFees>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilmFeesToJson(
      this,
    );
  }
}

abstract class _FilmFees implements FilmFeesModel {
  const factory _FilmFees(
      {required final String name, required final int fees}) = _$_FilmFees;

  factory _FilmFees.fromJson(Map<String, dynamic> json) = _$_FilmFees.fromJson;

  @override
  String get name;
  @override
  int get fees;
  @override
  @JsonKey(ignore: true)
  _$$_FilmFeesCopyWith<_$_FilmFees> get copyWith =>
      throw _privateConstructorUsedError;
}
