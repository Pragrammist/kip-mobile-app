import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kip_mobile/models/seria.dart';

part 'season.freezed.dart';
part 'season.g.dart';

@freezed
class SeasonModel with _$SeasonModel {
  const factory SeasonModel({
    //required int num,
    required List<SeriaModel> serias,
  }) = _Season;

  factory SeasonModel.fromJson(Map<String, Object?> json) =>
      _$SeasonModelFromJson(json);
}
