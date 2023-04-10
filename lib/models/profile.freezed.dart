// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _$Profile.fromJson(json);
}

/// @nodoc
mixin _$ProfileModel {
  String get id => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res, ProfileModel>;
  @useResult
  $Res call({String id, UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res, $Val extends ProfileModel>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_$ProfileCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$$_$ProfileCopyWith(
          _$_$Profile value, $Res Function(_$_$Profile) then) =
      __$$_$ProfileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, UserModel user});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$_$ProfileCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$_$Profile>
    implements _$$_$ProfileCopyWith<$Res> {
  __$$_$ProfileCopyWithImpl(
      _$_$Profile _value, $Res Function(_$_$Profile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
  }) {
    return _then(_$_$Profile(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$Profile implements _$Profile {
  const _$_$Profile({required this.id, required this.user});

  factory _$_$Profile.fromJson(Map<String, dynamic> json) =>
      _$$_$ProfileFromJson(json);

  @override
  final String id;
  @override
  final UserModel user;

  @override
  String toString() {
    return 'ProfileModel(id: $id, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$Profile &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$ProfileCopyWith<_$_$Profile> get copyWith =>
      __$$_$ProfileCopyWithImpl<_$_$Profile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_$ProfileToJson(
      this,
    );
  }
}

abstract class _$Profile implements ProfileModel {
  const factory _$Profile(
      {required final String id, required final UserModel user}) = _$_$Profile;

  factory _$Profile.fromJson(Map<String, dynamic> json) = _$_$Profile.fromJson;

  @override
  String get id;
  @override
  UserModel get user;
  @override
  @JsonKey(ignore: true)
  _$$_$ProfileCopyWith<_$_$Profile> get copyWith =>
      throw _privateConstructorUsedError;
}
