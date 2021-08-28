// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetModel _$ResetModelFromJson(Map<String, dynamic> json) {
  return ResetModel(
    createdAt: DateTime.parse(json['created_at'] as String),
    originalLevel: json['original_level'] as int,
    targetLevel: json['target_level'] as int,
    confirmedAt: json['confirmed_at'] == null
        ? null
        : DateTime.parse(json['confirmed_at'] as String),
  )..lastCheckedCacheAt = json['last_checked_cache_at'] == null
      ? null
      : DateTime.parse(json['last_checked_cache_at'] as String);
}

Map<String, dynamic> _$ResetModelToJson(ResetModel instance) =>
    <String, dynamic>{
      'last_checked_cache_at': instance.lastCheckedCacheAt?.toIso8601String(),
      'confirmed_at': instance.confirmedAt?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'original_level': instance.originalLevel,
      'target_level': instance.targetLevel,
    };
