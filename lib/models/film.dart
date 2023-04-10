import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kip_mobile/models/film_fees.dart';
import 'package:kip_mobile/models/film_release_type.dart';
import 'package:kip_mobile/models/film_short.dart';
import 'package:kip_mobile/models/film_type.dart';
import 'package:kip_mobile/models/person_short.dart';
import 'package:kip_mobile/models/season.dart';
import 'package:kip_mobile/models/stuff_in_film.dart';

part 'film.freezed.dart';
part 'film.g.dart';

@freezed
class FilmModel with _$FilmModel {
  const factory FilmModel({
    required String id,
    required int ageLimit,
    required String banner,
    required String name,
    required String description,
    required String country,
    required String duration,
    required DateTime? release,
    required DateTime? startScreening,
    required DateTime? endScreening,
    required String content,
    required List<FilmFeesModel> fees,
    required double score,
    required int scoreCount,
    required int willWatchCount,
    required int shareCount,
    required int watchedCount,
    required int viewCount,
    required int notInterestingCount,
    required List<String> images,
    required List<StuffInFilmModel> stuff,
    required List<String> articles,
    required List<String> trailers,
    required List<String> tizers,
    required List<FilmShortModel> relatedFilmObjects,
    required List<String> genres,
    required List<String> nominations,
    required List<SeasonModel> seasons,
  }) = _Film;

  factory FilmModel.fromJson(Map<String, Object?> json) =>
      _$FilmModelFromJson(json);
}
