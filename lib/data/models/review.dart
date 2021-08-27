import 'package:json_annotation/json_annotation.dart';
import 'package:wanikani_flutter/domain/entities/review.dart';

part 'review.g.dart';

@JsonSerializable()
class ReviewModel extends Review {
  const ReviewModel({
    required int assignmentId,
    required DateTime createdAt,
    required int endingSrsStage,
    required int incorrectMeaningAnswers,
    required int incorrectReadingAnswers,
    required int spacedRepetitionSystem,
    required int startingSrsStage,
    required int subjectId,
  }) : super(
          assignmentId: assignmentId,
          createdAt: createdAt,
          endingSrsStage: endingSrsStage,
          incorrectMeaningAnswers: incorrectMeaningAnswers,
          incorrectReadingAnswers: incorrectReadingAnswers,
          spacedRepetitionSystem: spacedRepetitionSystem,
          startingSrsStage: startingSrsStage,
          subjectId: subjectId,
        );

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
  Map<String, dynamic> toJson() => _$ReviewModelToJson(this);
}
