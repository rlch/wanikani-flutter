// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spaced_repetition_system.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpacedRepetitionSystem _$SpacedRepetitionSystemFromJson(
    Map<String, dynamic> json) {
  return SpacedRepetitionSystem(
    burningStagePosition: json['burning_stage_position'] as int,
    createdAt: DateTime.parse(json['created_at'] as String),
    description: json['description'] as String,
    name: json['name'] as String,
    passingStagePosition: json['passing_stage_position'] as int,
    stages: (json['stages'] as List<dynamic>)
        .map((e) => Stage.fromJson(e as Map<String, dynamic>))
        .toList(),
    startingStagePosition: json['starting_stage_position'] as int,
    unlockingStagePosition: json['unlocking_stage_position'] as int,
  );
}

Map<String, dynamic> _$SpacedRepetitionSystemToJson(
        SpacedRepetitionSystem instance) =>
    <String, dynamic>{
      'burning_stage_position': instance.burningStagePosition,
      'created_at': instance.createdAt.toIso8601String(),
      'description': instance.description,
      'name': instance.name,
      'passing_stage_position': instance.passingStagePosition,
      'stages': instance.stages.map((e) => e.toJson()).toList(),
      'starting_stage_position': instance.startingStagePosition,
      'unlocking_stage_position': instance.unlockingStagePosition,
    };

Stage _$StageFromJson(Map<String, dynamic> json) {
  return Stage(
    interval: json['interval'] as int?,
    intervalUnit: json['interval_unit'] as String?,
    position: json['position'] as int,
  );
}

Map<String, dynamic> _$StageToJson(Stage instance) => <String, dynamic>{
      'interval': instance.interval,
      'interval_unit': instance.intervalUnit,
      'position': instance.position,
    };
