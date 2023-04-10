import 'package:freezed_annotation/freezed_annotation.dart';

part 'film_selection_short.freezed.dart';
part 'film_selection_short.g.dart';

@freezed
class FilmSelectionShortModel with _$FilmSelectionShortModel {
  const factory FilmSelectionShortModel({
    required String id,
    required String name,
    required String image,
  }) = _$FilmSelectionShort;

  factory FilmSelectionShortModel.fromJson(Map<String, Object?> json) =>
      _$FilmSelectionShortModelFromJson(json);
}
