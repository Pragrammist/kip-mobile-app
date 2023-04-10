// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Person _$$_PersonFromJson(Map<String, dynamic> json) => _$_Person(
      id: json['id'] as String,
      birthday: DateTime.parse(json['birthday'] as String),
      name: json['name'] as String,
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
      banner: json['banner'] as String,
      height: (json['height'] as num).toDouble(),
      career: json['career'] as String,
      birthPlace: json['birthPlace'] as String,
      facts: (json['facts'] as List<dynamic>).map((e) => e as String).toList(),
      filmObjects: (json['filmObjects'] as List<dynamic>)
          .map((e) => FilmShortModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      nominations: (json['nominations'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_PersonToJson(_$_Person instance) => <String, dynamic>{
      'id': instance.id,
      'birthday': instance.birthday.toIso8601String(),
      'name': instance.name,
      'photos': instance.photos,
      'banner': instance.banner,
      'height': instance.height,
      'career': instance.career,
      'birthPlace': instance.birthPlace,
      'facts': instance.facts,
      'filmObjects': instance.filmObjects,
      'nominations': instance.nominations,
    };
