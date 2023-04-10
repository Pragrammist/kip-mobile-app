// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MediaContent _$$_MediaContentFromJson(Map<String, dynamic> json) =>
    _$_MediaContent(
      selections: (json['selections'] as List<dynamic>)
          .map((e) => FilmSelectionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      trailers: (json['trailers'] as List<dynamic>)
          .map((e) => TrailerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MediaContentToJson(_$_MediaContent instance) =>
    <String, dynamic>{
      'selections': instance.selections,
      'genres': instance.genres,
      'trailers': instance.trailers,
    };
