// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film_selection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FilmSelection _$$_FilmSelectionFromJson(Map<String, dynamic> json) =>
    _$_FilmSelection(
      id: json['id'] as String,
      filmObjects: (json['filmObjects'] as List<dynamic>)
          .map((e) => FilmShortModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      image: json['image'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_FilmSelectionToJson(_$_FilmSelection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'filmObjects': instance.filmObjects,
      'image': instance.image,
      'name': instance.name,
    };
