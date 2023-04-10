// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film_short.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FilmShort _$$_FilmShortFromJson(Map<String, dynamic> json) => _$_FilmShort(
      id: json['id'] as String,
      banner: json['banner'] as String,
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      name: json['name'] as String,
      score: (json['score'] as num).toDouble(),
    );

Map<String, dynamic> _$$_FilmShortToJson(_$_FilmShort instance) =>
    <String, dynamic>{
      'id': instance.id,
      'banner': instance.banner,
      'genres': instance.genres,
      'name': instance.name,
      'score': instance.score,
    };
