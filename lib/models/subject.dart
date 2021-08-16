import 'package:json_annotation/json_annotation.dart';
import 'package:wanikani_flutter/enums/auxiliary_meaning_type.dart';

part 'subject.g.dart';

/// The exact structure of a subject depends on the subject type. The available subject types are radical,
/// kanji, and vocabulary. Note that any attributes called out for the specific subject type behaves
/// differently than the common attribute of the same name.
abstract class Subject {
  const Subject({
    required this.auxiliaryMeanings,
    required this.createdAt,
    required this.documentUrl,
    required this.hiddenAt,
    required this.lessonPosition,
    required this.level,
    required this.meaningMnemonic,
    required this.meanings,
    required this.slug,
    required this.spacedRepetitionSystemId,
  });

  /// Collection of auxiliary meanings. See table below for the object structure.
  final List<AuxiliaryMeaning> auxiliaryMeanings;

  /// Timestamp when the subject was created.
  final DateTime createdAt;

  /// A URL pointing to the page on wanikani.com that provides detailed information about this subject.
  final String documentUrl;

  /// Timestamp when the subject was hidden, indicating associated assignments will no longer appear in
  /// lessons or reviews and that the subject page is no longer visible on wanikani.com.
  final DateTime? hiddenAt;

  /// The position that the subject appears in lessons. Note that the value is scoped to the level of the subject,
  /// so there are duplicate values across levels.
  final int lessonPosition;

  /// The level of the subject, from 1 to 60.
  final int level;

  /// The subject's meaning mnemonic.
  final String meaningMnemonic;

  /// The subject meanings. See table below for the object structure.
  final List<Meaning> meanings;

  /// The string that is used when generating the document URL for the subject. Radicals use their meaning,
  /// downcased. Kanji and vocabulary use their characters.
  final String slug;

  /// Unique identifier of the associated `spaced_repetition_system`.
  final int spacedRepetitionSystemId;
}

@JsonSerializable()
class Meaning {
  const Meaning({
    required this.meaning,
    required this.primary,
    required this.acceptedAnswer,
  });

  factory Meaning.fromJson(Map<String, dynamic> json) =>
      _$MeaningFromJson(json);
  Map<String, dynamic> toJson() => _$MeaningToJson(this);

  /// A singular subject meaning.
  final String meaning;

  /// Indicates priority in the WaniKani system.
  final bool primary;

  /// Indicates if the meaning is used to evaluate user input for correctness
  final bool acceptedAnswer;
}

@JsonSerializable()
class AuxiliaryMeaning {
  const AuxiliaryMeaning({
    required this.meaning,
    required this.type,
  });

  factory AuxiliaryMeaning.fromJson(Map<String, dynamic> json) =>
      _$AuxiliaryMeaningFromJson(json);
  Map<String, dynamic> toJson() => _$AuxiliaryMeaningToJson(this);

  /// A singular subject meaning.
  final String meaning;

  /// Either whitelist or blacklist.
  /// When evaluating user input, whitelisted meanings are used to match for correctness.
  /// Blacklisted meanings are used to match for incorrectness.
  final AuxiliaryMeaningType type;
}
