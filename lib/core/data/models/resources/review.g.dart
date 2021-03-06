// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) {
  return ReviewModel(
    assignmentId: json['assignment_id'] as int,
    createdAt: DateTime.parse(json['created_at'] as String),
    endingSrsStage: json['ending_srs_stage'] as int,
    incorrectMeaningAnswers: json['incorrect_meaning_answers'] as int,
    incorrectReadingAnswers: json['incorrect_reading_answers'] as int,
    spacedRepetitionSystem: json['spaced_repetition_system'] as int,
    startingSrsStage: json['starting_srs_stage'] as int,
    subjectId: json['subject_id'] as int,
  )..lastCheckedCacheAt = json['last_checked_cache_at'] == null
      ? null
      : DateTime.parse(json['last_checked_cache_at'] as String);
}

Map<String, dynamic> _$ReviewModelToJson(ReviewModel instance) =>
    <String, dynamic>{
      'last_checked_cache_at': instance.lastCheckedCacheAt?.toIso8601String(),
      'assignment_id': instance.assignmentId,
      'created_at': instance.createdAt.toIso8601String(),
      'ending_srs_stage': instance.endingSrsStage,
      'incorrect_meaning_answers': instance.incorrectMeaningAnswers,
      'incorrect_reading_answers': instance.incorrectReadingAnswers,
      'spaced_repetition_system': instance.spacedRepetitionSystem,
      'starting_srs_stage': instance.startingSrsStage,
      'subject_id': instance.subjectId,
    };
