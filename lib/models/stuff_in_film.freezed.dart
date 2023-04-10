// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stuff_in_film.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StuffInFilmModel _$StuffInFilmModelFromJson(Map<String, dynamic> json) {
  return _StuffInFilm.fromJson(json);
}

/// @nodoc
mixin _$StuffInFilmModel {
  List<String> get stuff => throw _privateConstructorUsedError;
  List<PersonShortModel> get stuffObjects => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StuffInFilmModelCopyWith<StuffInFilmModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StuffInFilmModelCopyWith<$Res> {
  factory $StuffInFilmModelCopyWith(
          StuffInFilmModel value, $Res Function(StuffInFilmModel) then) =
      _$StuffInFilmModelCopyWithImpl<$Res, StuffInFilmModel>;
  @useResult
  $Res call({List<String> stuff, List<PersonShortModel> stuffObjects});
}

/// @nodoc
class _$StuffInFilmModelCopyWithImpl<$Res, $Val extends StuffInFilmModel>
    implements $StuffInFilmModelCopyWith<$Res> {
  _$StuffInFilmModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stuff = null,
    Object? stuffObjects = null,
  }) {
    return _then(_value.copyWith(
      stuff: null == stuff
          ? _value.stuff
          : stuff // ignore: cast_nullable_to_non_nullable
              as List<String>,
      stuffObjects: null == stuffObjects
          ? _value.stuffObjects
          : stuffObjects // ignore: cast_nullable_to_non_nullable
              as List<PersonShortModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StuffInFilmCopyWith<$Res>
    implements $StuffInFilmModelCopyWith<$Res> {
  factory _$$_StuffInFilmCopyWith(
          _$_StuffInFilm value, $Res Function(_$_StuffInFilm) then) =
      __$$_StuffInFilmCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> stuff, List<PersonShortModel> stuffObjects});
}

/// @nodoc
class __$$_StuffInFilmCopyWithImpl<$Res>
    extends _$StuffInFilmModelCopyWithImpl<$Res, _$_StuffInFilm>
    implements _$$_StuffInFilmCopyWith<$Res> {
  __$$_StuffInFilmCopyWithImpl(
      _$_StuffInFilm _value, $Res Function(_$_StuffInFilm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stuff = null,
    Object? stuffObjects = null,
  }) {
    return _then(_$_StuffInFilm(
      stuff: null == stuff
          ? _value._stuff
          : stuff // ignore: cast_nullable_to_non_nullable
              as List<String>,
      stuffObjects: null == stuffObjects
          ? _value._stuffObjects
          : stuffObjects // ignore: cast_nullable_to_non_nullable
              as List<PersonShortModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StuffInFilm implements _StuffInFilm {
  const _$_StuffInFilm(
      {required final List<String> stuff,
      required final List<PersonShortModel> stuffObjects})
      : _stuff = stuff,
        _stuffObjects = stuffObjects;

  factory _$_StuffInFilm.fromJson(Map<String, dynamic> json) =>
      _$$_StuffInFilmFromJson(json);

  final List<String> _stuff;
  @override
  List<String> get stuff {
    if (_stuff is EqualUnmodifiableListView) return _stuff;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stuff);
  }

  final List<PersonShortModel> _stuffObjects;
  @override
  List<PersonShortModel> get stuffObjects {
    if (_stuffObjects is EqualUnmodifiableListView) return _stuffObjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stuffObjects);
  }

  @override
  String toString() {
    return 'StuffInFilmModel(stuff: $stuff, stuffObjects: $stuffObjects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StuffInFilm &&
            const DeepCollectionEquality().equals(other._stuff, _stuff) &&
            const DeepCollectionEquality()
                .equals(other._stuffObjects, _stuffObjects));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_stuff),
      const DeepCollectionEquality().hash(_stuffObjects));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StuffInFilmCopyWith<_$_StuffInFilm> get copyWith =>
      __$$_StuffInFilmCopyWithImpl<_$_StuffInFilm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StuffInFilmToJson(
      this,
    );
  }
}

abstract class _StuffInFilm implements StuffInFilmModel {
  const factory _StuffInFilm(
      {required final List<String> stuff,
      required final List<PersonShortModel> stuffObjects}) = _$_StuffInFilm;

  factory _StuffInFilm.fromJson(Map<String, dynamic> json) =
      _$_StuffInFilm.fromJson;

  @override
  List<String> get stuff;
  @override
  List<PersonShortModel> get stuffObjects;
  @override
  @JsonKey(ignore: true)
  _$$_StuffInFilmCopyWith<_$_StuffInFilm> get copyWith =>
      throw _privateConstructorUsedError;
}
