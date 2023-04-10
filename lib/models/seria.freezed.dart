// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seria.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SeriaModel _$SeriaModelFromJson(Map<String, dynamic> json) {
  return _Seria.fromJson(json);
}

/// @nodoc
mixin _$SeriaModel {
//required int num,
  String get idFile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeriaModelCopyWith<SeriaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriaModelCopyWith<$Res> {
  factory $SeriaModelCopyWith(
          SeriaModel value, $Res Function(SeriaModel) then) =
      _$SeriaModelCopyWithImpl<$Res, SeriaModel>;
  @useResult
  $Res call({String idFile});
}

/// @nodoc
class _$SeriaModelCopyWithImpl<$Res, $Val extends SeriaModel>
    implements $SeriaModelCopyWith<$Res> {
  _$SeriaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idFile = null,
  }) {
    return _then(_value.copyWith(
      idFile: null == idFile
          ? _value.idFile
          : idFile // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SeriaCopyWith<$Res> implements $SeriaModelCopyWith<$Res> {
  factory _$$_SeriaCopyWith(_$_Seria value, $Res Function(_$_Seria) then) =
      __$$_SeriaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String idFile});
}

/// @nodoc
class __$$_SeriaCopyWithImpl<$Res>
    extends _$SeriaModelCopyWithImpl<$Res, _$_Seria>
    implements _$$_SeriaCopyWith<$Res> {
  __$$_SeriaCopyWithImpl(_$_Seria _value, $Res Function(_$_Seria) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idFile = null,
  }) {
    return _then(_$_Seria(
      idFile: null == idFile
          ? _value.idFile
          : idFile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Seria implements _Seria {
  const _$_Seria({required this.idFile});

  factory _$_Seria.fromJson(Map<String, dynamic> json) =>
      _$$_SeriaFromJson(json);

//required int num,
  @override
  final String idFile;

  @override
  String toString() {
    return 'SeriaModel(idFile: $idFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Seria &&
            (identical(other.idFile, idFile) || other.idFile == idFile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeriaCopyWith<_$_Seria> get copyWith =>
      __$$_SeriaCopyWithImpl<_$_Seria>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeriaToJson(
      this,
    );
  }
}

abstract class _Seria implements SeriaModel {
  const factory _Seria({required final String idFile}) = _$_Seria;

  factory _Seria.fromJson(Map<String, dynamic> json) = _$_Seria.fromJson;

  @override //required int num,
  String get idFile;
  @override
  @JsonKey(ignore: true)
  _$$_SeriaCopyWith<_$_Seria> get copyWith =>
      throw _privateConstructorUsedError;
}
