// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'season.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SeasonModel _$SeasonModelFromJson(Map<String, dynamic> json) {
  return _Season.fromJson(json);
}

/// @nodoc
mixin _$SeasonModel {
//required int num,
  List<SeriaModel> get serias => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeasonModelCopyWith<SeasonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonModelCopyWith<$Res> {
  factory $SeasonModelCopyWith(
          SeasonModel value, $Res Function(SeasonModel) then) =
      _$SeasonModelCopyWithImpl<$Res, SeasonModel>;
  @useResult
  $Res call({List<SeriaModel> serias});
}

/// @nodoc
class _$SeasonModelCopyWithImpl<$Res, $Val extends SeasonModel>
    implements $SeasonModelCopyWith<$Res> {
  _$SeasonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serias = null,
  }) {
    return _then(_value.copyWith(
      serias: null == serias
          ? _value.serias
          : serias // ignore: cast_nullable_to_non_nullable
              as List<SeriaModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SeasonCopyWith<$Res> implements $SeasonModelCopyWith<$Res> {
  factory _$$_SeasonCopyWith(_$_Season value, $Res Function(_$_Season) then) =
      __$$_SeasonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SeriaModel> serias});
}

/// @nodoc
class __$$_SeasonCopyWithImpl<$Res>
    extends _$SeasonModelCopyWithImpl<$Res, _$_Season>
    implements _$$_SeasonCopyWith<$Res> {
  __$$_SeasonCopyWithImpl(_$_Season _value, $Res Function(_$_Season) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serias = null,
  }) {
    return _then(_$_Season(
      serias: null == serias
          ? _value._serias
          : serias // ignore: cast_nullable_to_non_nullable
              as List<SeriaModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Season implements _Season {
  const _$_Season({required final List<SeriaModel> serias}) : _serias = serias;

  factory _$_Season.fromJson(Map<String, dynamic> json) =>
      _$$_SeasonFromJson(json);

//required int num,
  final List<SeriaModel> _serias;
//required int num,
  @override
  List<SeriaModel> get serias {
    if (_serias is EqualUnmodifiableListView) return _serias;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_serias);
  }

  @override
  String toString() {
    return 'SeasonModel(serias: $serias)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Season &&
            const DeepCollectionEquality().equals(other._serias, _serias));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_serias));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeasonCopyWith<_$_Season> get copyWith =>
      __$$_SeasonCopyWithImpl<_$_Season>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeasonToJson(
      this,
    );
  }
}

abstract class _Season implements SeasonModel {
  const factory _Season({required final List<SeriaModel> serias}) = _$_Season;

  factory _Season.fromJson(Map<String, dynamic> json) = _$_Season.fromJson;

  @override //required int num,
  List<SeriaModel> get serias;
  @override
  @JsonKey(ignore: true)
  _$$_SeasonCopyWith<_$_Season> get copyWith =>
      throw _privateConstructorUsedError;
}
