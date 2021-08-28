import 'package:wanikani_flutter/wanikani/domain/entities/enums/subject_type.dart';

/// Assignments contain information about a user's progress on a particular subject,
/// including their current state and timestamps for various progress milestones.
/// Assignments are created when a user has passed all the components of the given subject
/// and the assignment is at or below their current level for the first time.
class Assignment {
  const Assignment({
    required this.availableAt,
    required this.burnedAt,
    required this.createdAt,
    required this.hidden,
    required this.passedAt,
    required this.resurrectedAt,
    required this.srsStage,
    required this.startedAt,
    required this.subjectId,
    required this.subjectType,
    required this.unlockedAt,
  });

  /// Timestamp when the related subject will be available in the user's review queue.
  final DateTime? availableAt;

  /// Timestamp when the user reaches SRS stage 9 the first time.
  final DateTime? burnedAt;

  /// Timestamp when the assignment was created.
  final DateTime? createdAt;

  /// Indicates if the associated subject has been hidden, preventing it from appearing in lessons or reviews.
  final bool hidden;

  /// Timestamp when the user reaches SRS stage 5 for the first time.
  final DateTime? passedAt;

  /// Timestamp when the subject is resurrected and placed back in the user's review queue.
  final DateTime? resurrectedAt;

  /// The current SRS stage interval. The interval range is determined by the related
  /// subject's spaced repetition system.
  final int srsStage;

  /// Timestamp when the user completes the lesson for the related subject.
  final DateTime? startedAt;

  /// Unique identifier of the associated subject.
  final int subjectId;

  /// The type of the associated subject, one of: kanji, radical, or vocabulary.
  final SubjectType subjectType;

  /// The timestamp when the related subject has its prerequisites satisfied and is made available in lessons.
  /// Prerequisites are:
  ///     The subject components have reached SRS stage 5 once (they have been “passed”).
  ///     The user's level is equal to or greater than the level of the assignment’s subject.
  final DateTime? unlockedAt;
}
