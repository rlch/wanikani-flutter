// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resource<T> _$ResourceFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) {
  return Resource<T>(
    json['id'] as int,
    object: json['object'] as String,
    url: json['url'] as String,
    dataUpdatedAt: DateTime.parse(json['data_updated_at'] as String),
    data: fromJsonT(json['data']),
  );
}

Map<String, dynamic> _$ResourceToJson<T>(
  Resource<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'url': instance.url,
      'data_updated_at': instance.dataUpdatedAt.toIso8601String(),
      'data': toJsonT(instance.data),
    };
