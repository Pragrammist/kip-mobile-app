// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_short.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonShortModel _$PersonShortModelFromJson(Map<String, dynamic> json) {
  return _$PersonShort.fromJson(json);
}

/// @nodoc
mixin _$PersonShortModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get banner => throw _privateConstructorUsedError;
  List<String> get photos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonShortModelCopyWith<PersonShortModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonShortModelCopyWith<$Res> {
  factory $PersonShortModelCopyWith(
          PersonShortModel value, $Res Function(PersonShortModel) then) =
      _$PersonShortModelCopyWithImpl<$Res, PersonShortModel>;
  @useResult
  $Res call({String id, String name, String banner, List<String> photos});
}

/// @nodoc
class _$PersonShortModelCopyWithImpl<$Res, $Val extends PersonShortModel>
    implements $PersonShortModelCopyWith<$Res> {
  _$PersonShortModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? banner = null,
    Object? photos = null,
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
      banner: null == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_$PersonShortCopyWith<$Res>
    implements $PersonShortModelCopyWith<$Res> {
  factory _$$_$PersonShortCopyWith(
          _$_$PersonShort value, $Res Function(_$_$PersonShort) then) =
      __$$_$PersonShortCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String banner, List<String> photos});
}

/// @nodoc
class __$$_$PersonShortCopyWithImpl<$Res>
    extends _$PersonShortModelCopyWithImpl<$Res, _$_$PersonShort>
    implements _$$_$PersonShortCopyWith<$Res> {
  __$$_$PersonShortCopyWithImpl(
      _$_$PersonShort _value, $Res Function(_$_$PersonShort) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? banner = null,
    Object? photos = null,
  }) {
    return _then(_$_$PersonShort(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      banner: null == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$PersonShort implements _$PersonShort {
  const _$_$PersonShort(
      {required this.id,
      required this.name,
      required this.banner,
      required final List<String> photos})
      : _photos = photos;

  factory _$_$PersonShort.fromJson(Map<String, dynamic> json) =>
      _$$_$PersonShortFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String banner;
  final List<String> _photos;
  @override
  List<String> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  String toString() {
    return 'PersonShortModel(id: $id, name: $name, banner: $banner, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$PersonShort &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.banner, banner) || other.banner == banner) &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, banner,
      const DeepCollectionEquality().hash(_photos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$PersonShortCopyWith<_$_$PersonShort> get copyWith =>
      __$$_$PersonShortCopyWithImpl<_$_$PersonShort>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_$PersonShortToJson(
      this,
    );
  }
}

abstract class _$PersonShort implements PersonShortModel {
  const factory _$PersonShort(
      {required final String id,
      required final String name,
      required final String banner,
      required final List<String> photos}) = _$_$PersonShort;

  factory _$PersonShort.fromJson(Map<String, dynamic> json) =
      _$_$PersonShort.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get banner;
  @override
  List<String> get photos;
  @override
  @JsonKey(ignore: true)
  _$$_$PersonShortCopyWith<_$_$PersonShort> get copyWith =>
      throw _privateConstructorUsedError;
}
