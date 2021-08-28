// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Data<T> _$_$DataFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) {
  return _$Data<T>(
    json['id'] as int,
    object: json['object'] as String,
    url: json['url'] as String,
    dataUpdatedAt: DateTime.parse(json['data_updated_at'] as String),
    data: fromJsonT(json['data']),
  );
}

Map<String, dynamic> _$_$DataToJson<T>(
  _$Data<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'url': instance.url,
      'data_updated_at': instance.dataUpdatedAt.toIso8601String(),
      'data': toJsonT(instance.data),
    };
