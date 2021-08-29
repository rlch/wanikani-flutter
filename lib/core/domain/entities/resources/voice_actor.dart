import 'package:wanikani_flutter/core/domain/entities/enums/gender.dart';

/// The summary report contains currently available lessons and reviews and the reviews that will become
/// available in the next 24 hours, grouped by the hour.
class VoiceActor {
  const VoiceActor({
    required this.description,
    required this.gender,
    required this.name,
  });

  /// Details about the voice actor.
  final String description;

  /// male or female
  final Gender gender;

  /// The voice actor's name
  final String name;
}
