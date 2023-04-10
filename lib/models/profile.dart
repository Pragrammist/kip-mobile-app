import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kip_mobile/models/user.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    required String id,
    required UserModel user,
  }) = _$Profile;

  factory ProfileModel.fromJson(Map<String, Object?> json) =>
      _$ProfileModelFromJson(json);
}
