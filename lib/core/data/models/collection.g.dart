// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagesModel _$PagesModelFromJson(Map<String, dynamic> json) {
  return PagesModel(
    json['next_url'] as String?,
    json['previous_url'] as String?,
    json['per_page'] as int,
  );
}

Map<String, dynamic> _$PagesModelToJson(PagesModel instance) =>
    <String, dynamic>{
      'next_url': instance.nextUrl,
      'previous_url': instance.previousUrl,
      'per_page': instance.perPage,
    };
