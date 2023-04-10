import 'package:freezed_annotation/freezed_annotation.dart';

part 'film_short.freezed.dart';
part 'film_short.g.dart';

@freezed
class FilmShortModel with _$FilmShortModel {
  const factory FilmShortModel({
    required String id,
    required String banner,
    required List<String> genres,
    required String name,
    required double score,
  }) = _FilmShort;

  factory FilmShortModel.fromJson(Map<String, Object?> json) =>
      _$FilmShortModelFromJson(json);
}
