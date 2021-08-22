import 'package:json_annotation/json_annotation.dart';
import 'package:wanikani_flutter/enums/gender.dart';

part 'voice_actor.g.dart';

/// The summary report contains currently available lessons and reviews and the reviews that will become
/// available in the next 24 hours, grouped by the hour.
@JsonSerializable()
class VoiceActor {
  const VoiceActor({
    required this.description,
    required this.gender,
    required this.name,
  });

  factory VoiceActor.fromJson(Map<String, dynamic> json) =>
      _$VoiceActorFromJson(json);
  Map<String, dynamic> toJson() => _$VoiceActorToJson(this);

  /// Details about the voice actor.
  final String description;

  /// male or female
  final Gender gender;

  /// The voice actor's name
  final String name;
}
