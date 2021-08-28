import 'package:json_annotation/json_annotation.dart';
import 'package:wanikani_flutter/wanikani/domain/entities/resources/level_progression.dart';

import '../model.dart';

part 'level_progression.g.dart';

@JsonSerializable()
class LevelProgressionModel extends LevelProgression with IModel {
  LevelProgressionModel({
    required DateTime createdAt,
    required int level,
    DateTime? abandonedAt,
    DateTime? completedAt,
    DateTime? passedAt,
    DateTime? startedAt,
    DateTime? unlockedAt,
  }) : super(
          abandonedAt: abandonedAt,
          completedAt: completedAt,
          createdAt: createdAt,
          level: level,
          passedAt: passedAt,
          startedAt: startedAt,
          unlockedAt: unlockedAt,
        );

  factory LevelProgressionModel.fromJson(Map<String, dynamic> json) =>
      _$LevelProgressionModelFromJson(json);
  Map<String, dynamic> toJson() => _$LevelProgressionModelToJson(this);
}
