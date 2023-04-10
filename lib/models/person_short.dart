import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kip_mobile/models/film_release_type.dart';
import 'package:kip_mobile/models/person_type.dart';

part 'person_short.freezed.dart';
part 'person_short.g.dart';

@freezed
class PersonShortModel with _$PersonShortModel {
  const factory PersonShortModel({
    required String id,
    required String name,
    required String banner,
    required List<String> photos,
  }) = _$PersonShort;

  factory PersonShortModel.fromJson(Map<String, Object?> json) =>
      _$PersonShortModelFromJson(json);
}
