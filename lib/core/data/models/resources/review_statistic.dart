import 'package:json_annotation/json_annotation.dart';
import 'package:wanikani_flutter/core/domain/entities/enums/subject_type.dart';
import 'package:wanikani_flutter/core/domain/entities/resources/review_statistic.dart';

import '../model.dart';

part 'review_statistic.g.dart';

@JsonSerializable()
class ReviewStatisticModel extends ReviewStatistic with IModel {
  ReviewStatisticModel({
    required DateTime createdAt,
    required bool hidden,
    required int meaningCorrect,
    required int meaningCurrentStreak,
    required int meaningIncorrect,
    required int meaningMaxStreak,
    required int percentageCorrect,
    required int readingCorrect,
    required int readingCurrentStreak,
    required int readingIncorrect,
    required int readingMaxStreak,
    required int subjectId,
    required SubjectType subjectType,
  }) : super(
          createdAt: createdAt,
          hidden: hidden,
          meaningCorrect: meaningCorrect,
          meaningCurrentStreak: meaningCurrentStreak,
          meaningIncorrect: meaningIncorrect,
          meaningMaxStreak: meaningMaxStreak,
          percentageCorrect: percentageCorrect,
          readingCorrect: readingCorrect,
          readingCurrentStreak: readingCurrentStreak,
          readingIncorrect: readingIncorrect,
          readingMaxStreak: readingMaxStreak,
          subjectId: subjectId,
          subjectType: subjectType,
        );

  factory ReviewStatisticModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewStatisticModelFromJson(json);
  Map<String, dynamic> toJson() => _$ReviewStatisticModelToJson(this);
}
