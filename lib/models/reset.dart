import 'package:json_annotation/json_annotation.dart';

part 'reset.g.dart';

/// Users can reset their progress back to any level at or below their current level. When they reset
/// to a particular level, all of the assignments and review_statistics at that level or higher are
/// set back to their default state.
///
/// Resets contain information about when those resets happen, the starting level, and the target level.
@JsonSerializable()
class Reset {
  const Reset({
    required this.confirmedAt,
    required this.createdAt,
    required this.originalLevel,
    required this.targetLevel,
  });

  factory Reset.fromJson(Map<String, dynamic> json) => _$ResetFromJson(json);
  Map<String, dynamic> toJson() => _$ResetToJson(this);

  /// Timestamp when the user confirmed the reset.
  final DateTime? confirmedAt;

  /// Timestamp when the reset was created.
  final DateTime createdAt;

  /// The user's level before the reset, from 1 to 60
  final int originalLevel;

  /// The user's level after the reset, from 1 to 60. It must be less than or equal to original_level.
  final int targetLevel;
}
