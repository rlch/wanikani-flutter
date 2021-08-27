/// Available spaced repetition systems used for calculating `srs_stage` changes to [Assignment]s and [Review]s.
/// Has relationship with [Subjects]
///
/// The _position fields align with the timestamps on assignment:
/// `unlocking_stage_position` => `unlocked_at`, `passing_stage_position` => `passed_at`, etc.
class SpacedRepetitionSystem {
  const SpacedRepetitionSystem({
    required this.burningStagePosition,
    required this.createdAt,
    required this.description,
    required this.name,
    required this.passingStagePosition,
    required this.stages,
    required this.startingStagePosition,
    required this.unlockingStagePosition,
  });

  /// `position` of the burning stage.
  final int burningStagePosition;

  /// Timestamp when the spaced_repetition_system was created.
  final DateTime createdAt;

  /// Details about the spaced repetition system.
  final String description;

  /// The name of the spaced repetition system
  final String name;

  /// `position` of the passing stage.
  final int passingStagePosition;

  /// A collection of stages. See table below for the object structure.
  final List<StageModel> stages;

  /// `position` of the starting stage.
  final int startingStagePosition;

  /// `position` of the unlocking stage.
  final int unlockingStagePosition;
}

/// The unlocking (position 0) and burning (maximum position) will always have null for interval
/// and interval_unit since the stages do not influence assignment.available_at. Stages in between
/// the unlocking and burning stages are the “reviewable” stages.
class Stage {
  const Stage({
    required this.interval,
    required this.intervalUnit,
    required this.position,
  });

  /// The length of time added to the time of review registration, adjusted to the beginning of the hour.
  final int? interval;

  /// Unit of time. Can be the following: milliseconds, seconds, minutes, hours, days, and weeks.
  final String? intervalUnit;

  /// The position of the stage within the continuous order.
  final int position;
}
