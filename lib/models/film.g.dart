// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Film _$$_FilmFromJson(Map<String, dynamic> json) => _$_Film(
      id: json['id'] as String,
      ageLimit: json['ageLimit'] as int,
      banner: json['banner'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      country: json['country'] as String,
      duration: json['duration'] as String,
      release: json['release'] == null
          ? null
          : DateTime.parse(json['release'] as String),
      startScreening: json['startScreening'] == null
          ? null
          : DateTime.parse(json['startScreening'] as String),
      endScreening: json['endScreening'] == null
          ? null
          : DateTime.parse(json['endScreening'] as String),
      content: json['content'] as String,
      fees: (json['fees'] as List<dynamic>)
          .map((e) => FilmFeesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      score: (json['score'] as num).toDouble(),
      scoreCount: json['scoreCount'] as int,
      willWatchCount: json['willWatchCount'] as int,
      shareCount: json['shareCount'] as int,
      watchedCount: json['watchedCount'] as int,
      viewCount: json['viewCount'] as int,
      notInterestingCount: json['notInterestingCount'] as int,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      stuff: (json['stuff'] as List<dynamic>)
          .map((e) => StuffInFilmModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      articles:
          (json['articles'] as List<dynamic>).map((e) => e as String).toList(),
      trailers:
          (json['trailers'] as List<dynamic>).map((e) => e as String).toList(),
      tizers:
          (json['tizers'] as List<dynamic>).map((e) => e as String).toList(),
      relatedFilmObjects: (json['relatedFilmObjects'] as List<dynamic>)
          .map((e) => FilmShortModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      nominations: (json['nominations'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      seasons: (json['seasons'] as List<dynamic>)
          .map((e) => SeasonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FilmToJson(_$_Film instance) => <String, dynamic>{
      'id': instance.id,
      'ageLimit': instance.ageLimit,
      'banner': instance.banner,
      'name': instance.name,
      'description': instance.description,
      'country': instance.country,
      'duration': instance.duration,
      'release': instance.release?.toIso8601String(),
      'startScreening': instance.startScreening?.toIso8601String(),
      'endScreening': instance.endScreening?.toIso8601String(),
      'content': instance.content,
      'fees': instance.fees,
      'score': instance.score,
      'scoreCount': instance.scoreCount,
      'willWatchCount': instance.willWatchCount,
      'shareCount': instance.shareCount,
      'watchedCount': instance.watchedCount,
      'viewCount': instance.viewCount,
      'notInterestingCount': instance.notInterestingCount,
      'images': instance.images,
      'stuff': instance.stuff,
      'articles': instance.articles,
      'trailers': instance.trailers,
      'tizers': instance.tizers,
      'relatedFilmObjects': instance.relatedFilmObjects,
      'genres': instance.genres,
      'nominations': instance.nominations,
      'seasons': instance.seasons,
    };
