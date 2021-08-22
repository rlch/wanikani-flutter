// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Collection<T> _$CollectionFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) {
  return Collection<T>(
    json['id'] as int,
    object: json['object'] as String,
    url: json['url'] as String,
    dataUpdatedAt: DateTime.parse(json['data_updated_at'] as String),
    data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
    pages: Pages.fromJson(json['pages'] as Map<String, dynamic>),
    totalCount: json['total_count'] as int,
  );
}

Map<String, dynamic> _$CollectionToJson<T>(
  Collection<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'url': instance.url,
      'data_updated_at': instance.dataUpdatedAt.toIso8601String(),
      'data': instance.data.map(toJsonT).toList(),
      'pages': instance.pages.toJson(),
      'total_count': instance.totalCount,
    };

Pages _$PagesFromJson(Map<String, dynamic> json) {
  return Pages(
    json['next_url'] as String?,
    json['previous_url'] as String?,
    json['per_page'] as int,
  );
}

Map<String, dynamic> _$PagesToJson(Pages instance) => <String, dynamic>{
      'next_url': instance.nextUrl,
      'previous_url': instance.previousUrl,
      'per_page': instance.perPage,
    };