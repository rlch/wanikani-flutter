// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return Review(
    assignmentId: json['assignment_id'] as int,
    createdAt: DateTime.parse(json['created_at'] as String),
    endingSrsStage: json['ending_srs_stage'] as int,
    incorrectMeaningAnswers: json['incorrect_meaning_answers'] as int,
    incorrectReadingAnswers: json['incorrect_reading_answers'] as int,
    spacedRepetitionSystem: json['spaced_repetition_system'] as int,
    startingSrsStage: json['starting_srs_stage'] as int,
    subjectId: json['subject_id'] as int,
  );
}

Map<String, dynamic> _$ReviewToJson(Review instance) => <String, dynamic>{
      'assignment_id': instance.assignmentId,
      'created_at': instance.createdAt.toIso8601String(),
      'ending_srs_stage': instance.endingSrsStage,
      'incorrect_meaning_answers': instance.incorrectMeaningAnswers,
      'incorrect_reading_answers': instance.incorrectReadingAnswers,
      'spaced_repetition_system': instance.spacedRepetitionSystem,
      'starting_srs_stage': instance.startingSrsStage,
      'subject_id': instance.subjectId,
    };
