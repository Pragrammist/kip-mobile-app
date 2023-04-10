// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$Profile _$$_$ProfileFromJson(Map<String, dynamic> json) => _$_$Profile(
      id: json['id'] as String,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_$ProfileToJson(_$_$Profile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
    };
