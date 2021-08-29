// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_statistic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewStatisticModel _$ReviewStatisticModelFromJson(Map<String, dynamic> json) {
  return ReviewStatisticModel(
    createdAt: DateTime.parse(json['created_at'] as String),
    hidden: json['hidden'] as bool,
    meaningCorrect: json['meaning_correct'] as int,
    meaningCurrentStreak: json['meaning_current_streak'] as int,
    meaningIncorrect: json['meaning_incorrect'] as int,
    meaningMaxStreak: json['meaning_max_streak'] as int,
    percentageCorrect: json['percentage_correct'] as int,
    readingCorrect: json['reading_correct'] as int,
    readingCurrentStreak: json['reading_current_streak'] as int,
    readingIncorrect: json['reading_incorrect'] as int,
    readingMaxStreak: json['reading_max_streak'] as int,
    subjectId: json['subject_id'] as int,
    subjectType: SubjectType.fromJson(json['subject_type'] as String),
  )..lastCheckedCacheAt = json['last_checked_cache_at'] == null
      ? null
      : DateTime.parse(json['last_checked_cache_at'] as String);
}

Map<String, dynamic> _$ReviewStatisticModelToJson(
        ReviewStatisticModel instance) =>
    <String, dynamic>{
      'last_checked_cache_at': instance.lastCheckedCacheAt?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'hidden': instance.hidden,
      'meaning_correct': instance.meaningCorrect,
      'meaning_current_streak': instance.meaningCurrentStreak,
      'meaning_incorrect': instance.meaningIncorrect,
      'meaning_max_streak': instance.meaningMaxStreak,
      'percentage_correct': instance.percentageCorrect,
      'reading_correct': instance.readingCorrect,
      'reading_current_streak': instance.readingCurrentStreak,
      'reading_incorrect': instance.readingIncorrect,
      'reading_max_streak': instance.readingMaxStreak,
      'subject_id': instance.subjectId,
      'subject_type': instance.subjectType.toJson(),
    };
