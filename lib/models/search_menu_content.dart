import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kip_mobile/models/film_selection.dart';
import 'package:kip_mobile/models/person_short.dart';

part 'search_menu_content.freezed.dart';
part 'search_menu_content.g.dart';

@freezed
class SearchMenuContentModel with _$SearchMenuContentModel {
  const factory SearchMenuContentModel({
    required List<FilmSelectionModel> selections,
    required List<String> genres,
    required List<PersonShortModel> today,
    required List<PersonShortModel> mostPopular,
  }) = _SearchMenuContent;

  factory SearchMenuContentModel.fromJson(Map<String, Object?> json) =>
      _$SearchMenuContentModelFromJson(json);
}
