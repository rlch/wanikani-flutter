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

_$Data<T> _$_$DataFromJson<T extends IModel>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) {
  return _$Data<T>(
    json['id'] as int,
    data: (json['data'] as List<dynamic>)
        .map((e) => ResourceModel.fromJson(
            e as Map<String, dynamic>, (value) => fromJsonT(value)))
        .toList(),
    pages: PagesModel.fromJson(json['pages'] as Map<String, dynamic>),
    object: json['object'] as String,
    url: json['url'] as String,
    dataUpdatedAt: DateTime.parse(json['data_updated_at'] as String),
    totalCount: json['total_count'] as int,
  );
}

Map<String, dynamic> _$_$DataToJson<T extends IModel>(
  _$Data<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'id': instance.id,
      'data': instance.data.map((e) => e.toJson()).toList(),
      'pages': instance.pages.toJson(),
      'object': instance.object,
      'url': instance.url,
      'data_updated_at': instance.dataUpdatedAt.toIso8601String(),
      'total_count': instance.totalCount,
    };
