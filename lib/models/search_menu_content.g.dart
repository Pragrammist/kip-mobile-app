// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_menu_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchMenuContent _$$_SearchMenuContentFromJson(Map<String, dynamic> json) =>
    _$_SearchMenuContent(
      selections: (json['selections'] as List<dynamic>)
          .map((e) => FilmSelectionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      today: (json['today'] as List<dynamic>)
          .map((e) => PersonShortModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      mostPopular: (json['mostPopular'] as List<dynamic>)
          .map((e) => PersonShortModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SearchMenuContentToJson(
        _$_SearchMenuContent instance) =>
    <String, dynamic>{
      'selections': instance.selections,
      'genres': instance.genres,
      'today': instance.today,
      'mostPopular': instance.mostPopular,
    };
