/// Review records are created when a user answers all the parts of a subject correctly once; some
/// Reviews log all the correct and incorrect answers provided through the 'Reviews' section of Wanikani.
/// subjects have both meaning or reading parts, and some only have one or the other. Note that reviews
/// are not created for the quizzes in lessons.
class Review {
  const Review({
    required this.assignmentId,
    required this.createdAt,
    required this.endingSrsStage,
    required this.incorrectMeaningAnswers,
    required this.incorrectReadingAnswers,
    required this.spacedRepetitionSystem,
    required this.startingSrsStage,
    required this.subjectId,
  });

  /// Unique identifier of the associated assignment.
  final int assignmentId;

  /// Timestamp when the review was created.
  final DateTime createdAt;

  /// The SRS stage interval calculated from the number of correct and incorrect answers,
  /// with valid values ranging from 1 to 9
  final int endingSrsStage;

  /// The number of times the user has answered the meaning incorrectly.
  final int incorrectMeaningAnswers;

  /// The number of times the user has answered the reading incorrectly.
  final int incorrectReadingAnswers;

  /// Unique identifier of the associated spaced_repetition_system.
  final int spacedRepetitionSystem;

  /// The starting SRS stage interval, with valid values ranging from 1 to 8
  final int startingSrsStage;

  /// Unique identifier of the associated subject.
  final int subjectId;
}
