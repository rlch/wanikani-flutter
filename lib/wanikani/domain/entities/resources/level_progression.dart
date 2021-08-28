/// Level progressions contain information about a user's progress through the WaniKani levels.
///
/// A level progression is created when a user has met the prerequisites for leveling up, which are:
/// - Reach a 90% passing rate on assignments for a user's current level with a subject_type of kanji.
///   Passed assignments have `data.passed` equal to `true` and a `data.passed_at` that's in the past.
/// - Have access to the level. Under /user, the `data.level` must be less than or equal to
///   `data.subscription.max_level_granted`.
class LevelProgression {
  const LevelProgression({
    required this.abandonedAt,
    required this.completedAt,
    required this.createdAt,
    required this.level,
    required this.passedAt,
    required this.startedAt,
    required this.unlockedAt,
  });

  /// Timestamp when the user abandons the level. This is primary used when the user initiates a reset.
  final DateTime? abandonedAt;

  /// Timestamp when the user burns 100% of the assignments belonging to the associated subject's level.
  final DateTime? completedAt;

  /// Timestamp when the level progression is created
  final DateTime createdAt;

  /// The level of the progression, with possible values from 1 to 60.
  final int level;

  /// Timestamp when the user passes at least 90% of the assignments with a type of kanji belonging
  /// to the associated subject's level.
  final DateTime? passedAt;

  /// Timestamp when the user starts their first lesson of a subject belonging to the level.
  final DateTime? startedAt;

  /// Timestamp when the user can access lessons and reviews for the level.
  final DateTime? unlockedAt;
}
