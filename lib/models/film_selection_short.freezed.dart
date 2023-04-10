// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'film_selection_short.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilmSelectionShortModel _$FilmSelectionShortModelFromJson(
    Map<String, dynamic> json) {
  return _$FilmSelectionShort.fromJson(json);
}

/// @nodoc
mixin _$FilmSelectionShortModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilmSelectionShortModelCopyWith<FilmSelectionShortModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmSelectionShortModelCopyWith<$Res> {
  factory $FilmSelectionShortModelCopyWith(FilmSelectionShortModel value,
          $Res Function(FilmSelectionShortModel) then) =
      _$FilmSelectionShortModelCopyWithImpl<$Res, FilmSelectionShortModel>;
  @useResult
  $Res call({String id, String name, String image});
}

/// @nodoc
class _$FilmSelectionShortModelCopyWithImpl<$Res,
        $Val extends FilmSelectionShortModel>
    implements $FilmSelectionShortModelCopyWith<$Res> {
  _$FilmSelectionShortModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_$FilmSelectionShortCopyWith<$Res>
    implements $FilmSelectionShortModelCopyWith<$Res> {
  factory _$$_$FilmSelectionShortCopyWith(_$_$FilmSelectionShort value,
          $Res Function(_$_$FilmSelectionShort) then) =
      __$$_$FilmSelectionShortCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String image});
}

/// @nodoc
class __$$_$FilmSelectionShortCopyWithImpl<$Res>
    extends _$FilmSelectionShortModelCopyWithImpl<$Res, _$_$FilmSelectionShort>
    implements _$$_$FilmSelectionShortCopyWith<$Res> {
  __$$_$FilmSelectionShortCopyWithImpl(_$_$FilmSelectionShort _value,
      $Res Function(_$_$FilmSelectionShort) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_$_$FilmSelectionShort(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$FilmSelectionShort implements _$FilmSelectionShort {
  const _$_$FilmSelectionShort(
      {required this.id, required this.name, required this.image});

  factory _$_$FilmSelectionShort.fromJson(Map<String, dynamic> json) =>
      _$$_$FilmSelectionShortFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String image;

  @override
  String toString() {
    return 'FilmSelectionShortModel(id: $id, name: $name, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$FilmSelectionShort &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$FilmSelectionShortCopyWith<_$_$FilmSelectionShort> get copyWith =>
      __$$_$FilmSelectionShortCopyWithImpl<_$_$FilmSelectionShort>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_$FilmSelectionShortToJson(
      this,
    );
  }
}

abstract class _$FilmSelectionShort implements FilmSelectionShortModel {
  const factory _$FilmSelectionShort(
      {required final String id,
      required final String name,
      required final String image}) = _$_$FilmSelectionShort;

  factory _$FilmSelectionShort.fromJson(Map<String, dynamic> json) =
      _$_$FilmSelectionShort.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_$FilmSelectionShortCopyWith<_$_$FilmSelectionShort> get copyWith =>
      throw _privateConstructorUsedError;
}
