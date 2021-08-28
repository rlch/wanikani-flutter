import 'package:json_annotation/json_annotation.dart';
import 'package:wanikani_flutter/domain/entities/summary.dart';

part 'summary.g.dart';

@JsonSerializable()
class SummaryModel extends Summary {
  const SummaryModel({
    required this.lessons,
    required this.reviews,
    DateTime? nextReviewsAt,
  }) : super(
          lessons: lessons,
          reviews: reviews,
          nextReviewsAt: nextReviewsAt,
        );

  @override
  final List<LessonDetailsModel> lessons;
  @override
  final List<ReviewDetailsModel> reviews;

  factory SummaryModel.fromJson(Map<String, dynamic> json) =>
      _$SummaryModelFromJson(json);
  Map<String, dynamic> toJson() => _$SummaryModelToJson(this);
}

@JsonSerializable()
class ReviewDetailsModel extends ReviewDetails {
  const ReviewDetailsModel({
    required DateTime availableAt,
    required List<int> subjectIds,
  }) : super(
          availableAt: availableAt,
          subjectIds: subjectIds,
        );

  factory ReviewDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewDetailsModelFromJson(json);
  Map<String, dynamic> toJson() => _$ReviewDetailsModelToJson(this);
}

@JsonSerializable()
class LessonDetailsModel extends LessonDetails {
  const LessonDetailsModel({
    required DateTime availableAt,
    required List<int> subjectIds,
  }) : super(
          availableAt: availableAt,
          subjectIds: subjectIds,
        );

  factory LessonDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$LessonDetailsModelFromJson(json);
  Map<String, dynamic> toJson() => _$LessonDetailsModelToJson(this);
}
