// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'film_selection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilmSelectionModel _$FilmSelectionModelFromJson(Map<String, dynamic> json) {
  return _FilmSelection.fromJson(json);
}

/// @nodoc
mixin _$FilmSelectionModel {
  String get id => throw _privateConstructorUsedError;
  List<FilmShortModel> get filmObjects => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilmSelectionModelCopyWith<FilmSelectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmSelectionModelCopyWith<$Res> {
  factory $FilmSelectionModelCopyWith(
          FilmSelectionModel value, $Res Function(FilmSelectionModel) then) =
      _$FilmSelectionModelCopyWithImpl<$Res, FilmSelectionModel>;
  @useResult
  $Res call(
      {String id, List<FilmShortModel> filmObjects, String image, String name});
}

/// @nodoc
class _$FilmSelectionModelCopyWithImpl<$Res, $Val extends FilmSelectionModel>
    implements $FilmSelectionModelCopyWith<$Res> {
  _$FilmSelectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? filmObjects = null,
    Object? image = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      filmObjects: null == filmObjects
          ? _value.filmObjects
          : filmObjects // ignore: cast_nullable_to_non_nullable
              as List<FilmShortModel>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilmSelectionCopyWith<$Res>
    implements $FilmSelectionModelCopyWith<$Res> {
  factory _$$_FilmSelectionCopyWith(
          _$_FilmSelection value, $Res Function(_$_FilmSelection) then) =
      __$$_FilmSelectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, List<FilmShortModel> filmObjects, String image, String name});
}

/// @nodoc
class __$$_FilmSelectionCopyWithImpl<$Res>
    extends _$FilmSelectionModelCopyWithImpl<$Res, _$_FilmSelection>
    implements _$$_FilmSelectionCopyWith<$Res> {
  __$$_FilmSelectionCopyWithImpl(
      _$_FilmSelection _value, $Res Function(_$_FilmSelection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? filmObjects = null,
    Object? image = null,
    Object? name = null,
  }) {
    return _then(_$_FilmSelection(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      filmObjects: null == filmObjects
          ? _value._filmObjects
          : filmObjects // ignore: cast_nullable_to_non_nullable
              as List<FilmShortModel>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilmSelection implements _FilmSelection {
  const _$_FilmSelection(
      {required this.id,
      required final List<FilmShortModel> filmObjects,
      required this.image,
      required this.name})
      : _filmObjects = filmObjects;

  factory _$_FilmSelection.fromJson(Map<String, dynamic> json) =>
      _$$_FilmSelectionFromJson(json);

  @override
  final String id;
  final List<FilmShortModel> _filmObjects;
  @override
  List<FilmShortModel> get filmObjects {
    if (_filmObjects is EqualUnmodifiableListView) return _filmObjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filmObjects);
  }

  @override
  final String image;
  @override
  final String name;

  @override
  String toString() {
    return 'FilmSelectionModel(id: $id, filmObjects: $filmObjects, image: $image, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilmSelection &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._filmObjects, _filmObjects) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_filmObjects), image, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilmSelectionCopyWith<_$_FilmSelection> get copyWith =>
      __$$_FilmSelectionCopyWithImpl<_$_FilmSelection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilmSelectionToJson(
      this,
    );
  }
}

abstract class _FilmSelection implements FilmSelectionModel {
  const factory _FilmSelection(
      {required final String id,
      required final List<FilmShortModel> filmObjects,
      required final String image,
      required final String name}) = _$_FilmSelection;

  factory _FilmSelection.fromJson(Map<String, dynamic> json) =
      _$_FilmSelection.fromJson;

  @override
  String get id;
  @override
  List<FilmShortModel> get filmObjects;
  @override
  String get image;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_FilmSelectionCopyWith<_$_FilmSelection> get copyWith =>
      throw _privateConstructorUsedError;
}
