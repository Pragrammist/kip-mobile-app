import 'package:freezed_annotation/freezed_annotation.dart';

part 'seria.freezed.dart';
part 'seria.g.dart';

@freezed
class SeriaModel with _$SeriaModel {
  const factory SeriaModel({
    //required int num,
    required String idFile,
  }) = _Seria;

  factory SeriaModel.fromJson(Map<String, Object?> json) =>
      _$SeriaModelFromJson(json);
}
