import 'package:freezed_annotation/freezed_annotation.dart';

part 'film_fees.freezed.dart';
part 'film_fees.g.dart';

@freezed
class FilmFeesModel with _$FilmFeesModel {
  const factory FilmFeesModel({
    required String name,
    required int fees,
  }) = _FilmFees;

  factory FilmFeesModel.fromJson(Map<String, Object?> json) =>
      _$FilmFeesModelFromJson(json);
}
