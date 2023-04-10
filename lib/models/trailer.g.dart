// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trailer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$Trailer _$$_$TrailerFromJson(Map<String, dynamic> json) => _$_$Trailer(
      id: json['id'] as String,
      trailer: json['trailer'] as String,
      name: json['name'] as String,
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      releaseType: $enumDecode(_$FilmReleaseTypeEnumMap, json['releaseType']),
    );

Map<String, dynamic> _$$_$TrailerToJson(_$_$Trailer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'trailer': instance.trailer,
      'name': instance.name,
      'genres': instance.genres,
      'releaseType': _$FilmReleaseTypeEnumMap[instance.releaseType]!,
    };

const _$FilmReleaseTypeEnumMap = {
  FilmReleaseType.release: 'release',
  FilmReleaseType.premiera: 'premiera',
  FilmReleaseType.screening: 'screening',
};
