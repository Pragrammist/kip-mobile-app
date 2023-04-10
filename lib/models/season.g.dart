// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Season _$$_SeasonFromJson(Map<String, dynamic> json) => _$_Season(
      serias: (json['serias'] as List<dynamic>)
          .map((e) => SeriaModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SeasonToJson(_$_Season instance) => <String, dynamic>{
      'serias': instance.serias,
    };
