// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SummaryModel _$SummaryModelFromJson(Map<String, dynamic> json) {
  return SummaryModel(
    lessons: (json['lessons'] as List<dynamic>)
        .map((e) => LessonDetailsModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    reviews: (json['reviews'] as List<dynamic>)
        .map((e) => ReviewDetailsModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    nextReviewsAt: json['next_reviews_at'] == null
        ? null
        : DateTime.parse(json['next_reviews_at'] as String),
  )..lastCheckedCacheAt = json['last_checked_cache_at'] == null
      ? null
      : DateTime.parse(json['last_checked_cache_at'] as String);
}

Map<String, dynamic> _$SummaryModelToJson(SummaryModel instance) =>
    <String, dynamic>{
      'next_reviews_at': instance.nextReviewsAt?.toIso8601String(),
      'last_checked_cache_at': instance.lastCheckedCacheAt?.toIso8601String(),
      'lessons': instance.lessons.map((e) => e.toJson()).toList(),
      'reviews': instance.reviews.map((e) => e.toJson()).toList(),
    };

ReviewDetailsModel _$ReviewDetailsModelFromJson(Map<String, dynamic> json) {
  return ReviewDetailsModel(
    availableAt: DateTime.parse(json['available_at'] as String),
    subjectIds:
        (json['subject_ids'] as List<dynamic>).map((e) => e as int).toList(),
  );
}

Map<String, dynamic> _$ReviewDetailsModelToJson(ReviewDetailsModel instance) =>
    <String, dynamic>{
      'available_at': instance.availableAt.toIso8601String(),
      'subject_ids': instance.subjectIds,
    };

LessonDetailsModel _$LessonDetailsModelFromJson(Map<String, dynamic> json) {
  return LessonDetailsModel(
    availableAt: DateTime.parse(json['available_at'] as String),
    subjectIds:
        (json['subject_ids'] as List<dynamic>).map((e) => e as int).toList(),
  );
}

Map<String, dynamic> _$LessonDetailsModelToJson(LessonDetailsModel instance) =>
    <String, dynamic>{
      'available_at': instance.availableAt.toIso8601String(),
      'subject_ids': instance.subjectIds,
    };
