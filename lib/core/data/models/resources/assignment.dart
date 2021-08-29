import 'package:json_annotation/json_annotation.dart';
import 'package:wanikani_flutter/core/domain/entities/enums/subject_type.dart';
import 'package:wanikani_flutter/core/domain/entities/resources/assignment.dart';

import '../model.dart';

part 'assignment.g.dart';

@JsonSerializable()
class AssignmentModel extends Assignment with IModel {
  AssignmentModel({
    required DateTime? availableAt,
    required DateTime? burnedAt,
    required DateTime createdAt,
    required bool hidden,
    required DateTime? passedAt,
    required DateTime? resurrectedAt,
    required int srsStage,
    required DateTime? startedAt,
    required int subjectId,
    required SubjectType subjectType,
    required DateTime? unlockedAt,
  }) : super(
          availableAt: availableAt,
          burnedAt: burnedAt,
          createdAt: createdAt,
          hidden: hidden,
          passedAt: passedAt,
          resurrectedAt: resurrectedAt,
          srsStage: srsStage,
          startedAt: startedAt,
          subjectId: subjectId,
          subjectType: subjectType,
          unlockedAt: unlockedAt,
        );

  factory AssignmentModel.fromJson(Map<String, dynamic> json) =>
      _$AssignmentModelFromJson(json);
  Map<String, dynamic> toJson() => _$AssignmentModelToJson(this);
}
