// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_menu_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchMenuContentModel _$SearchMenuContentModelFromJson(
    Map<String, dynamic> json) {
  return _SearchMenuContent.fromJson(json);
}

/// @nodoc
mixin _$SearchMenuContentModel {
  List<FilmSelectionModel> get selections => throw _privateConstructorUsedError;
  List<String> get genres => throw _privateConstructorUsedError;
  List<PersonShortModel> get today => throw _privateConstructorUsedError;
  List<PersonShortModel> get mostPopular => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchMenuContentModelCopyWith<SearchMenuContentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchMenuContentModelCopyWith<$Res> {
  factory $SearchMenuContentModelCopyWith(SearchMenuContentModel value,
          $Res Function(SearchMenuContentModel) then) =
      _$SearchMenuContentModelCopyWithImpl<$Res, SearchMenuContentModel>;
  @useResult
  $Res call(
      {List<FilmSelectionModel> selections,
      List<String> genres,
      List<PersonShortModel> today,
      List<PersonShortModel> mostPopular});
}

/// @nodoc
class _$SearchMenuContentModelCopyWithImpl<$Res,
        $Val extends SearchMenuContentModel>
    implements $SearchMenuContentModelCopyWith<$Res> {
  _$SearchMenuContentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selections = null,
    Object? genres = null,
    Object? today = null,
    Object? mostPopular = null,
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
      today: null == today
          ? _value.today
          : today // ignore: cast_nullable_to_non_nullable
              as List<PersonShortModel>,
      mostPopular: null == mostPopular
          ? _value.mostPopular
          : mostPopular // ignore: cast_nullable_to_non_nullable
              as List<PersonShortModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchMenuContentCopyWith<$Res>
    implements $SearchMenuContentModelCopyWith<$Res> {
  factory _$$_SearchMenuContentCopyWith(_$_SearchMenuContent value,
          $Res Function(_$_SearchMenuContent) then) =
      __$$_SearchMenuContentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<FilmSelectionModel> selections,
      List<String> genres,
      List<PersonShortModel> today,
      List<PersonShortModel> mostPopular});
}

/// @nodoc
class __$$_SearchMenuContentCopyWithImpl<$Res>
    extends _$SearchMenuContentModelCopyWithImpl<$Res, _$_SearchMenuContent>
    implements _$$_SearchMenuContentCopyWith<$Res> {
  __$$_SearchMenuContentCopyWithImpl(
      _$_SearchMenuContent _value, $Res Function(_$_SearchMenuContent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selections = null,
    Object? genres = null,
    Object? today = null,
    Object? mostPopular = null,
  }) {
    return _then(_$_SearchMenuContent(
      selections: null == selections
          ? _value._selections
          : selections // ignore: cast_nullable_to_non_nullable
              as List<FilmSelectionModel>,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      today: null == today
          ? _value._today
          : today // ignore: cast_nullable_to_non_nullable
              as List<PersonShortModel>,
      mostPopular: null == mostPopular
          ? _value._mostPopular
          : mostPopular // ignore: cast_nullable_to_non_nullable
              as List<PersonShortModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchMenuContent implements _SearchMenuContent {
  const _$_SearchMenuContent(
      {required final List<FilmSelectionModel> selections,
      required final List<String> genres,
      required final List<PersonShortModel> today,
      required final List<PersonShortModel> mostPopular})
      : _selections = selections,
        _genres = genres,
        _today = today,
        _mostPopular = mostPopular;

  factory _$_SearchMenuContent.fromJson(Map<String, dynamic> json) =>
      _$$_SearchMenuContentFromJson(json);

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

  final List<PersonShortModel> _today;
  @override
  List<PersonShortModel> get today {
    if (_today is EqualUnmodifiableListView) return _today;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_today);
  }

  final List<PersonShortModel> _mostPopular;
  @override
  List<PersonShortModel> get mostPopular {
    if (_mostPopular is EqualUnmodifiableListView) return _mostPopular;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mostPopular);
  }

  @override
  String toString() {
    return 'SearchMenuContentModel(selections: $selections, genres: $genres, today: $today, mostPopular: $mostPopular)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchMenuContent &&
            const DeepCollectionEquality()
                .equals(other._selections, _selections) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality().equals(other._today, _today) &&
            const DeepCollectionEquality()
                .equals(other._mostPopular, _mostPopular));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_selections),
      const DeepCollectionEquality().hash(_genres),
      const DeepCollectionEquality().hash(_today),
      const DeepCollectionEquality().hash(_mostPopular));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchMenuContentCopyWith<_$_SearchMenuContent> get copyWith =>
      __$$_SearchMenuContentCopyWithImpl<_$_SearchMenuContent>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchMenuContentToJson(
      this,
    );
  }
}

abstract class _SearchMenuContent implements SearchMenuContentModel {
  const factory _SearchMenuContent(
          {required final List<FilmSelectionModel> selections,
          required final List<String> genres,
          required final List<PersonShortModel> today,
          required final List<PersonShortModel> mostPopular}) =
      _$_SearchMenuContent;

  factory _SearchMenuContent.fromJson(Map<String, dynamic> json) =
      _$_SearchMenuContent.fromJson;

  @override
  List<FilmSelectionModel> get selections;
  @override
  List<String> get genres;
  @override
  List<PersonShortModel> get today;
  @override
  List<PersonShortModel> get mostPopular;
  @override
  @JsonKey(ignore: true)
  _$$_SearchMenuContentCopyWith<_$_SearchMenuContent> get copyWith =>
      throw _privateConstructorUsedError;
}
