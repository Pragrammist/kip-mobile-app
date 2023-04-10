// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trailer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrailerModel _$TrailerModelFromJson(Map<String, dynamic> json) {
  return _$Trailer.fromJson(json);
}

/// @nodoc
mixin _$TrailerModel {
  String get id => throw _privateConstructorUsedError;
  String get trailer => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get genres => throw _privateConstructorUsedError;
  FilmReleaseType get releaseType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrailerModelCopyWith<TrailerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrailerModelCopyWith<$Res> {
  factory $TrailerModelCopyWith(
          TrailerModel value, $Res Function(TrailerModel) then) =
      _$TrailerModelCopyWithImpl<$Res, TrailerModel>;
  @useResult
  $Res call(
      {String id,
      String trailer,
      String name,
      List<String> genres,
      FilmReleaseType releaseType});
}

/// @nodoc
class _$TrailerModelCopyWithImpl<$Res, $Val extends TrailerModel>
    implements $TrailerModelCopyWith<$Res> {
  _$TrailerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? trailer = null,
    Object? name = null,
    Object? genres = null,
    Object? releaseType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      trailer: null == trailer
          ? _value.trailer
          : trailer // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      releaseType: null == releaseType
          ? _value.releaseType
          : releaseType // ignore: cast_nullable_to_non_nullable
              as FilmReleaseType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_$TrailerCopyWith<$Res>
    implements $TrailerModelCopyWith<$Res> {
  factory _$$_$TrailerCopyWith(
          _$_$Trailer value, $Res Function(_$_$Trailer) then) =
      __$$_$TrailerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String trailer,
      String name,
      List<String> genres,
      FilmReleaseType releaseType});
}

/// @nodoc
class __$$_$TrailerCopyWithImpl<$Res>
    extends _$TrailerModelCopyWithImpl<$Res, _$_$Trailer>
    implements _$$_$TrailerCopyWith<$Res> {
  __$$_$TrailerCopyWithImpl(
      _$_$Trailer _value, $Res Function(_$_$Trailer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? trailer = null,
    Object? name = null,
    Object? genres = null,
    Object? releaseType = null,
  }) {
    return _then(_$_$Trailer(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      trailer: null == trailer
          ? _value.trailer
          : trailer // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      releaseType: null == releaseType
          ? _value.releaseType
          : releaseType // ignore: cast_nullable_to_non_nullable
              as FilmReleaseType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$Trailer implements _$Trailer {
  const _$_$Trailer(
      {required this.id,
      required this.trailer,
      required this.name,
      required final List<String> genres,
      required this.releaseType})
      : _genres = genres;

  factory _$_$Trailer.fromJson(Map<String, dynamic> json) =>
      _$$_$TrailerFromJson(json);

  @override
  final String id;
  @override
  final String trailer;
  @override
  final String name;
  final List<String> _genres;
  @override
  List<String> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  final FilmReleaseType releaseType;

  @override
  String toString() {
    return 'TrailerModel(id: $id, trailer: $trailer, name: $name, genres: $genres, releaseType: $releaseType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$Trailer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.trailer, trailer) || other.trailer == trailer) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.releaseType, releaseType) ||
                other.releaseType == releaseType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, trailer, name,
      const DeepCollectionEquality().hash(_genres), releaseType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$TrailerCopyWith<_$_$Trailer> get copyWith =>
      __$$_$TrailerCopyWithImpl<_$_$Trailer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_$TrailerToJson(
      this,
    );
  }
}

abstract class _$Trailer implements TrailerModel {
  const factory _$Trailer(
      {required final String id,
      required final String trailer,
      required final String name,
      required final List<String> genres,
      required final FilmReleaseType releaseType}) = _$_$Trailer;

  factory _$Trailer.fromJson(Map<String, dynamic> json) = _$_$Trailer.fromJson;

  @override
  String get id;
  @override
  String get trailer;
  @override
  String get name;
  @override
  List<String> get genres;
  @override
  FilmReleaseType get releaseType;
  @override
  @JsonKey(ignore: true)
  _$$_$TrailerCopyWith<_$_$Trailer> get copyWith =>
      throw _privateConstructorUsedError;
}
