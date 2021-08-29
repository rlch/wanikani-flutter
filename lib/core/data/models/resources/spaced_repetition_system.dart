import 'package:json_annotation/json_annotation.dart';
import 'package:wanikani_flutter/core/domain/entities/resources/spaced_repetition_system.dart';

import '../model.dart';

part 'spaced_repetition_system.g.dart';

@JsonSerializable()
class SpacedRepetitionSystemModel extends SpacedRepetitionSystem with IModel {
  SpacedRepetitionSystemModel({
    required int burningStagePosition,
    required DateTime createdAt,
    required String description,
    required String name,
    required int passingStagePosition,
    required this.stages,
    required int startingStagePosition,
    required int unlockingStagePosition,
  }) : super(
          burningStagePosition: burningStagePosition,
          createdAt: createdAt,
          description: description,
          name: name,
          passingStagePosition: passingStagePosition,
          stages: stages,
          startingStagePosition: startingStagePosition,
          unlockingStagePosition: unlockingStagePosition,
        );

  @override
  final List<StageModel> stages;

  factory SpacedRepetitionSystemModel.fromJson(Map<String, dynamic> json) =>
      _$SpacedRepetitionSystemModelFromJson(json);
  Map<String, dynamic> toJson() => _$SpacedRepetitionSystemModelToJson(this);
}

@JsonSerializable()
class StageModel extends Stage {
  const StageModel({
    required int? interval,
    required String? intervalUnit,
    required int position,
  }) : super(
          interval: interval,
          intervalUnit: intervalUnit,
          position: position,
        );

  factory StageModel.fromJson(Map<String, dynamic> json) =>
      _$StageModelFromJson(json);
  Map<String, dynamic> toJson() => _$StageModelToJson(this);
}
