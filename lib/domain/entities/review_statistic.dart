import 'package:wanikani_flutter/enums/subject_type.dart';

/// Review statistics summarize the activity recorded in reviews. They contain sum the number of
/// correct and incorrect answers for both meaning and reading. They track current and maximum
/// streaks of correct answers. They store the overall percentage of correct answers versus total answers.
///
/// A review statistic is created when the user has done their first review on the related subject.
class ReviewStatistic {
  const ReviewStatistic({
    required this.createdAt,
    required this.hidden,
    required this.meaningCorrect,
    required this.meaningCurrentStreak,
    required this.meaningIncorrect,
    required this.meaningMaxStreak,
    required this.percentageCorrect,
    required this.readingCorrect,
    required this.readingCurrentStreak,
    required this.readingIncorrect,
    required this.readingMaxStreak,
    required this.subjectId,
    required this.subjectType,
  });

  /// Timestamp when the review statistic was created.
  final DateTime createdAt;

  /// Indicates if the associated subject has been hidden, preventing it from appearing in lessons or reviews.
  final bool hidden;

  /// Total number of correct answers submitted for the meaning of the associated subject.
  final int meaningCorrect;

  /// The current, uninterrupted series of correct answers given for the meaning of the associated subject.
  final int meaningCurrentStreak;

  /// Total number of incorrect answers submitted for the meaning of the associated subject.
  final int meaningIncorrect;

  /// The longest, uninterrupted series of correct answers ever given for the meaning of the associated subject.
  final int meaningMaxStreak;

  /// The overall correct answer rate by the user for the subject, including both meaning and reading.
  final int percentageCorrect;

  /// Total number of correct answers submitted for the reading of the associated subject.
  final int readingCorrect;

  /// The current, uninterrupted series of correct answers given for the reading of the associated subject.
  final int readingCurrentStreak;

  /// Total number of incorrect answers submitted for the reading of the associated subject.
  final int readingIncorrect;

  /// The longest, uninterrupted series of correct answers ever given for the reading of the associated subject.
  final int readingMaxStreak;

  /// Unique identifier of the associated subject.
  final int subjectId;

  /// The type of the associated subject, one of: kanji, radical, or vocabulary.
  final SubjectType subjectType;
}
