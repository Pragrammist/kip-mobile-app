import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kip_mobile/models/film_selection.dart';
import 'package:kip_mobile/models/trailer.dart';

part 'media_content.freezed.dart';
part 'media_content.g.dart';

@freezed
class MediaContentModel with _$MediaContentModel {
  const factory MediaContentModel({
    required List<FilmSelectionModel> selections,
    required List<String> genres,
    required List<TrailerModel> trailers,
  }) = _MediaContent;

  factory MediaContentModel.fromJson(Map<String, Object?> json) =>
      _$MediaContentModelFromJson(json);
}
