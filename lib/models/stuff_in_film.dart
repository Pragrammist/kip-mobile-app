import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kip_mobile/models/person_short.dart';

part 'stuff_in_film.freezed.dart';
part 'stuff_in_film.g.dart';

@freezed
class StuffInFilmModel with _$StuffInFilmModel {
  const factory StuffInFilmModel({
    required List<String> stuff,
    required List<PersonShortModel> stuffObjects,
  }) = _StuffInFilm;

  factory StuffInFilmModel.fromJson(Map<String, Object?> json) =>
      _$StuffInFilmModelFromJson(json);
}
