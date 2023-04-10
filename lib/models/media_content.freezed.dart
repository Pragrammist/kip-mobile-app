// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaContentModel _$MediaContentModelFromJson(Map<String, dynamic> json) {
  return _MediaContent.fromJson(json);
}

/// @nodoc
mixin _$MediaContentModel {
  List<FilmSelectionModel> get selections => throw _privateConstructorUsedError;
  List<String> get genres => throw _privateConstructorUsedError;
  List<TrailerModel> get trailers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaContentModelCopyWith<MediaContentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaContentModelCopyWith<$Res> {
  factory $MediaContentModelCopyWith(
          MediaContentModel value, $Res Function(MediaContentModel) then) =
      _$MediaContentModelCopyWithImpl<$Res, MediaContentModel>;
  @useResult
  $Res call(
      {List<FilmSelectionModel> selections,
      List<String> genres,
      List<TrailerModel> trailers});
}

/// @nodoc
class _$MediaContentModelCopyWithImpl<$Res, $Val extends MediaContentModel>
    implements $MediaContentModelCopyWith<$Res> {
  _$MediaContentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selections = null,
    Object? genres = null,
    Object? trailers = null,
  }) {
    return _then(_value.copyWith(
      selections: null == selections
          ? _value.selections
          : selections // ignore: cast_nullable_to_non_nullable
              as List<FilmSelectionModel>,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      trailers: null == trailers
          ? _value.trailers
          : trailers // ignore: cast_nullable_to_non_nullable
              as List<TrailerModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaContentCopyWith<$Res>
    implements $MediaContentModelCopyWith<$Res> {
  factory _$$_MediaContentCopyWith(
          _$_MediaContent value, $Res Function(_$_MediaContent) then) =
      __$$_MediaContentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<FilmSelectionModel> selections,
      List<String> genres,
      List<TrailerModel> trailers});
}

/// @nodoc
class __$$_MediaContentCopyWithImpl<$Res>
    extends _$MediaContentModelCopyWithImpl<$Res, _$_MediaContent>
    implements _$$_MediaContentCopyWith<$Res> {
  __$$_MediaContentCopyWithImpl(
      _$_MediaContent _value, $Res Function(_$_MediaContent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selections = null,
    Object? genres = null,
    Object? trailers = null,
  }) {
    return _then(_$_MediaContent(
      selections: null == selections
          ? _value._selections
          : selections // ignore: cast_nullable_to_non_nullable
              as List<FilmSelectionModel>,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      trailers: null == trailers
          ? _value._trailers
          : trailers // ignore: cast_nullable_to_non_nullable
              as List<TrailerModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaContent implements _MediaContent {
  const _$_MediaContent(
      {required final List<FilmSelectionModel> selections,
      required final List<String> genres,
      required final List<TrailerModel> trailers})
      : _selections = selections,
        _genres = genres,
        _trailers = trailers;

  factory _$_MediaContent.fromJson(Map<String, dynamic> json) =>
      _$$_MediaContentFromJson(json);

  final List<FilmSelectionModel> _selections;
  @override
  List<FilmSelectionModel> get selections {
    if (_selections is EqualUnmodifiableListView) return _selections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selections);
  }

  final List<String> _genres;
  @override
  List<String> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  final List<TrailerModel> _trailers;
  @override
  List<TrailerModel> get trailers {
    if (_trailers is EqualUnmodifiableListView) return _trailers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trailers);
  }

  @override
  String toString() {
    return 'MediaContentModel(selections: $selections, genres: $genres, trailers: $trailers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaContent &&
            const DeepCollectionEquality()
                .equals(other._selections, _selections) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality().equals(other._trailers, _trailers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_selections),
      const DeepCollectionEquality().hash(_genres),
      const DeepCollectionEquality().hash(_trailers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaContentCopyWith<_$_MediaContent> get copyWith =>
      __$$_MediaContentCopyWithImpl<_$_MediaContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaContentToJson(
      this,
    );
  }
}

abstract class _MediaContent implements MediaContentModel {
  const factory _MediaContent(
      {required final List<FilmSelectionModel> selections,
      required final List<String> genres,
      required final List<TrailerModel> trailers}) = _$_MediaContent;

  factory _MediaContent.fromJson(Map<String, dynamic> json) =
      _$_MediaContent.fromJson;

  @override
  List<FilmSelectionModel> get selections;
  @override
  List<String> get genres;
  @override
  List<TrailerModel> get trailers;
  @override
  @JsonKey(ignore: true)
  _$$_MediaContentCopyWith<_$_MediaContent> get copyWith =>
      throw _privateConstructorUsedError;
}
