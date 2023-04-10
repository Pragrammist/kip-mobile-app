// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_short.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$PersonShort _$$_$PersonShortFromJson(Map<String, dynamic> json) =>
    _$_$PersonShort(
      id: json['id'] as String,
      name: json['name'] as String,
      banner: json['banner'] as String,
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_$PersonShortToJson(_$_$PersonShort instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'banner': instance.banner,
      'photos': instance.photos,
    };
