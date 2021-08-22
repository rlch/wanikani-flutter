// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'level_progression.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LevelProgression _$LevelProgressionFromJson(Map<String, dynamic> json) {
  return LevelProgression(
    abandonedAt: json['abandoned_at'] == null
        ? null
        : DateTime.parse(json['abandoned_at'] as String),
    completedAt: json['completed_at'] == null
        ? null
        : DateTime.parse(json['completed_at'] as String),
    createdAt: DateTime.parse(json['created_at'] as String),
    level: json['level'] as int,
    passedAt: json['passed_at'] == null
        ? null
        : DateTime.parse(json['passed_at'] as String),
    startedAt: json['started_at'] == null
        ? null
        : DateTime.parse(json['started_at'] as String),
    unlockedAt: json['unlocked_at'] == null
        ? null
        : DateTime.parse(json['unlocked_at'] as String),
  );
}

Map<String, dynamic> _$LevelProgressionToJson(LevelProgression instance) =>
    <String, dynamic>{
      'abandoned_at': instance.abandonedAt?.toIso8601String(),
      'completed_at': instance.completedAt?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'level': instance.level,
      'passed_at': instance.passedAt?.toIso8601String(),
      'started_at': instance.startedAt?.toIso8601String(),
      'unlocked_at': instance.unlockedAt?.toIso8601String(),
    };