// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Summary _$SummaryFromJson(Map<String, dynamic> json) {
  return Summary(
    lessons: (json['lessons'] as List<dynamic>)
        .map((e) => LessonDetails.fromJson(e as Map<String, dynamic>))
        .toList(),
    nextReviewsAt: json['next_reviews_at'] == null
        ? null
        : DateTime.parse(json['next_reviews_at'] as String),
    reviews: (json['reviews'] as List<dynamic>)
        .map((e) => ReviewDetails.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$SummaryToJson(Summary instance) => <String, dynamic>{
      'lessons': instance.lessons.map((e) => e.toJson()).toList(),
      'next_reviews_at': instance.nextReviewsAt?.toIso8601String(),
      'reviews': instance.reviews.map((e) => e.toJson()).toList(),
    };

ReviewDetails _$ReviewDetailsFromJson(Map<String, dynamic> json) {
  return ReviewDetails(
    availableAt: DateTime.parse(json['available_at'] as String),
    subjectIds:
        (json['subject_ids'] as List<dynamic>).map((e) => e as int).toList(),
  );
}

Map<String, dynamic> _$ReviewDetailsToJson(ReviewDetails instance) =>
    <String, dynamic>{
      'available_at': instance.availableAt.toIso8601String(),
      'subject_ids': instance.subjectIds,
    };

LessonDetails _$LessonDetailsFromJson(Map<String, dynamic> json) {
  return LessonDetails(
    availableAt: DateTime.parse(json['available_at'] as String),
    subjectIds:
        (json['subject_ids'] as List<dynamic>).map((e) => e as int).toList(),
  );
}

Map<String, dynamic> _$LessonDetailsToJson(LessonDetails instance) =>
    <String, dynamic>{
      'available_at': instance.availableAt.toIso8601String(),
      'subject_ids': instance.subjectIds,
    };
