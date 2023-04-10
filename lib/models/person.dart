import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kip_mobile/models/film_short.dart';
import 'package:kip_mobile/models/person_type.dart';

part 'person.freezed.dart';
part 'person.g.dart';

@freezed
class PersonModel with _$PersonModel {
  const factory PersonModel({
    required String id,
    required DateTime birthday,
    required String name,
    required List<String> photos,
    required String banner,
    required double height,
    required String career,
    required String birthPlace,
    required List<String> facts,
    required List<FilmShortModel> filmObjects,
    required List<String> nominations,
  }) = _Person;

  factory PersonModel.fromJson(Map<String, Object?> json) =>
      _$PersonModelFromJson(json);
}
