import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kip_mobile/models/film_short.dart';

part 'film_selection.freezed.dart';
part 'film_selection.g.dart';

@freezed
class FilmSelectionModel with _$FilmSelectionModel {
  const factory FilmSelectionModel({
    required String id,
    required List<FilmShortModel> filmObjects,
    required String image,
    required String name,
  }) = _FilmSelection;

  factory FilmSelectionModel.fromJson(Map<String, Object?> json) =>
      _$FilmSelectionModelFromJson(json);
}
