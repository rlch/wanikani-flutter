import 'package:wanikani_flutter/domain/entities/reading.dart';

import 'subject.dart';

class Kanji extends Subject {
  const Kanji({
    required this.amalgamationSubjectIds,
    required this.componentSubjectIds,
    required this.meaningHint,
    required this.readingHint,
    required this.readingMnemonic,
    required this.readings,
    required this.visuallySimilarSubjectIds,
    required List<AuxiliaryMeaning> auxiliaryMeanings,
    required DateTime createdAt,
    required String documentUrl,
    required DateTime? hiddenAt,
    required int lessonPosition,
    required int level,
    required String meaningMnemonic,
    required List<Meaning> meanings,
    required String slug,
    required int spacedRepetitionSystemId,
  }) : super(
          auxiliaryMeanings: auxiliaryMeanings,
          createdAt: createdAt,
          documentUrl: documentUrl,
          hiddenAt: hiddenAt,
          lessonPosition: lessonPosition,
          level: level,
          meaningMnemonic: meaningMnemonic,
          meanings: meanings,
          slug: slug,
          spacedRepetitionSystemId: spacedRepetitionSystemId,
        );

  /// An array of numeric identifiers for the vocabulary that have the kanji as a component.
  final List<int> amalgamationSubjectIds;

  /// An array of numeric identifiers for the radicals that make up this kanji.
  /// Note that these are the subjects that must have passed assignments in order to unlock this subject's assignment.
  final List<int> componentSubjectIds;

  /// Meaning hint for the kanji.
  final String? meaningHint;

  /// KanjiReading hint for the kanji.
  final String? readingHint;

  /// The kanji's reading mnemonic.
  final String readingMnemonic;

  /// Selected readings for the kanji. See table below for the object structure.
  final List<KanjiReading> readings;

  /// An array of numeric identifiers for kanji which are visually similar to the kanji in question.
  final List<int> visuallySimilarSubjectIds;
}
