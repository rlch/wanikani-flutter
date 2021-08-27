import 'package:json_annotation/json_annotation.dart';
import 'package:wanikani_flutter/domain/entities/study_material.dart';
import 'package:wanikani_flutter/enums/subject_type.dart';

part 'study_material.g.dart';

@JsonSerializable()
class StudyMaterialModel extends StudyMaterial {
  const StudyMaterialModel({
    required DateTime createdAt,
    required bool hidden,
    required List<String> meaningSynonyms,
    required int subjectId,
    required SubjectType subjectType,
    String? meaningNote,
    String? readingNote,
  }) : super(
          createdAt: createdAt,
          hidden: hidden,
          meaningSynonyms: meaningSynonyms,
          subjectId: subjectId,
          subjectType: subjectType,
          meaningNote: meaningNote,
          readingNote: readingNote,
        );

  factory StudyMaterialModel.fromJson(Map<String, dynamic> json) =>
      _$StudyMaterialModelFromJson(json);
  Map<String, dynamic> toJson() => _$StudyMaterialModelToJson(this);
}
