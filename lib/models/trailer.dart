import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kip_mobile/models/film_release_type.dart';

part 'trailer.freezed.dart';
part 'trailer.g.dart';

@freezed
class TrailerModel with _$TrailerModel {
  const factory TrailerModel({
    required String id,
    required String trailer,
    required String name,
    required List<String> genres,
    required FilmReleaseType releaseType,
  }) = _$Trailer;

  factory TrailerModel.fromJson(Map<String, Object?> json) =>
      _$TrailerModelFromJson(json);
}
