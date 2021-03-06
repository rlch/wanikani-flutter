// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spaced_repetition_system.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpacedRepetitionSystemModel _$SpacedRepetitionSystemModelFromJson(
    Map<String, dynamic> json) {
  return SpacedRepetitionSystemModel(
    burningStagePosition: json['burning_stage_position'] as int,
    createdAt: DateTime.parse(json['created_at'] as String),
    description: json['description'] as String,
    name: json['name'] as String,
    passingStagePosition: json['passing_stage_position'] as int,
    stages: (json['stages'] as List<dynamic>)
        .map((e) => StageModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    startingStagePosition: json['starting_stage_position'] as int,
    unlockingStagePosition: json['unlocking_stage_position'] as int,
  )..lastCheckedCacheAt = json['last_checked_cache_at'] == null
      ? null
      : DateTime.parse(json['last_checked_cache_at'] as String);
}

Map<String, dynamic> _$SpacedRepetitionSystemModelToJson(
        SpacedRepetitionSystemModel instance) =>
    <String, dynamic>{
      'last_checked_cache_at': instance.lastCheckedCacheAt?.toIso8601String(),
      'burning_stage_position': instance.burningStagePosition,
      'created_at': instance.createdAt.toIso8601String(),
      'description': instance.description,
      'name': instance.name,
      'passing_stage_position': instance.passingStagePosition,
      'starting_stage_position': instance.startingStagePosition,
      'unlocking_stage_position': instance.unlockingStagePosition,
      'stages': instance.stages.map((e) => e.toJson()).toList(),
    };

StageModel _$StageModelFromJson(Map<String, dynamic> json) {
  return StageModel(
    interval: json['interval'] as int?,
    intervalUnit: json['interval_unit'] as String?,
    position: json['position'] as int,
  );
}

Map<String, dynamic> _$StageModelToJson(StageModel instance) =>
    <String, dynamic>{
      'interval': instance.interval,
      'interval_unit': instance.intervalUnit,
      'position': instance.position,
    };
