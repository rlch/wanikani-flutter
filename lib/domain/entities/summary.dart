/// The summary report contains currently available lessons and reviews and the reviews that will become
/// available in the next 24 hours, grouped by the hour.
class Summary {
  const Summary({
    required this.lessons,
    required this.nextReviewsAt,
    required this.reviews,
  });

  /// Details about subjects available for lessons.
  final List<LessonDetails> lessons;

  /// Earliest date when the reviews are available. Is `null` when the user has no reviews scheduled.
  final DateTime? nextReviewsAt;

  /// Details about subjects available for reviews now and in the next 24 hours by the hour (total of 25 objects).
  final List<ReviewDetails> reviews;
}

abstract class ISummaryDetails {
  const ISummaryDetails({
    required this.availableAt,
    required this.subjectIds,
  });

  final DateTime availableAt;
  final List<int> subjectIds;
}

class ReviewDetails {
  const ReviewDetails({
    required this.availableAt,
    required this.subjectIds,
  });

  /// When the paired subject_ids are available for reviews. All timestamps are the top of an hour.
  final DateTime availableAt;

  /// Collection of unique identifiers for subjects.
  final List<int> subjectIds;
}

class LessonDetails {
  const LessonDetails({
    required this.availableAt,
    required this.subjectIds,
  });

  /// When the paired subject_ids are available for lessons. Always beginning of the current hour when the API endpoint is accessed.
  final DateTime availableAt;

  /// Collection of unique identifiers for subjects.
  final List<int> subjectIds;
}
