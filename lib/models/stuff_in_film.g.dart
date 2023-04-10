// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stuff_in_film.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StuffInFilm _$$_StuffInFilmFromJson(Map<String, dynamic> json) =>
    _$_StuffInFilm(
      stuff: (json['stuff'] as List<dynamic>).map((e) => e as String).toList(),
      stuffObjects: (json['stuffObjects'] as List<dynamic>)
          .map((e) => PersonShortModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StuffInFilmToJson(_$_StuffInFilm instance) =>
    <String, dynamic>{
      'stuff': instance.stuff,
      'stuffObjects': instance.stuffObjects,
    };
