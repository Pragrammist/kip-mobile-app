// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'film_short.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilmShortModel _$FilmShortModelFromJson(Map<String, dynamic> json) {
  return _FilmShort.fromJson(json);
}

/// @nodoc
mixin _$FilmShortModel {
  String get id => throw _privateConstructorUsedError;
  String get banner => throw _privateConstructorUsedError;
  List<String> get genres => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilmShortModelCopyWith<FilmShortModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmShortModelCopyWith<$Res> {
  factory $FilmShortModelCopyWith(
          FilmShortModel value, $Res Function(FilmShortModel) then) =
      _$FilmShortModelCopyWithImpl<$Res, FilmShortModel>;
  @useResult
  $Res call(
      {String id,
      String banner,
      List<String> genres,
      String name,
      double score});
}

/// @nodoc
class _$FilmShortModelCopyWithImpl<$Res, $Val extends FilmShortModel>
    implements $FilmShortModelCopyWith<$Res> {
  _$FilmShortModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? banner = null,
    Object? genres = null,
    Object? name = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      banner: null == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilmShortCopyWith<$Res>
    implements $FilmShortModelCopyWith<$Res> {
  factory _$$_FilmShortCopyWith(
          _$_FilmShort value, $Res Function(_$_FilmShort) then) =
      __$$_FilmShortCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String banner,
      List<String> genres,
      String name,
      double score});
}

/// @nodoc
class __$$_FilmShortCopyWithImpl<$Res>
    extends _$FilmShortModelCopyWithImpl<$Res, _$_FilmShort>
    implements _$$_FilmShortCopyWith<$Res> {
  __$$_FilmShortCopyWithImpl(
      _$_FilmShort _value, $Res Function(_$_FilmShort) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? banner = null,
    Object? genres = null,
    Object? name = null,
    Object? score = null,
  }) {
    return _then(_$_FilmShort(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      banner: null == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilmShort implements _FilmShort {
  const _$_FilmShort(
      {required this.id,
      required this.banner,
      required final List<String> genres,
      required this.name,
      required this.score})
      : _genres = genres;

  factory _$_FilmShort.fromJson(Map<String, dynamic> json) =>
      _$$_FilmShortFromJson(json);

  @override
  final String id;
  @override
  final String banner;
  final List<String> _genres;
  @override
  List<String> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  final String name;
  @override
  final double score;

  @override
  String toString() {
    return 'FilmShortModel(id: $id, banner: $banner, genres: $genres, name: $name, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilmShort &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.banner, banner) || other.banner == banner) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, banner,
      const DeepCollectionEquality().hash(_genres), name, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilmShortCopyWith<_$_FilmShort> get copyWith =>
      __$$_FilmShortCopyWithImpl<_$_FilmShort>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilmShortToJson(
      this,
    );
  }
}

abstract class _FilmShort implements FilmShortModel {
  const factory _FilmShort(
      {required final String id,
      required final String banner,
      required final List<String> genres,
      required final String name,
      required final double score}) = _$_FilmShort;

  factory _FilmShort.fromJson(Map<String, dynamic> json) =
      _$_FilmShort.fromJson;

  @override
  String get id;
  @override
  String get banner;
  @override
  List<String> get genres;
  @override
  String get name;
  @override
  double get score;
  @override
  @JsonKey(ignore: true)
  _$$_FilmShortCopyWith<_$_FilmShort> get copyWith =>
      throw _privateConstructorUsedError;
}
