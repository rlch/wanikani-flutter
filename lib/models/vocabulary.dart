import 'package:json_annotation/json_annotation.dart';
import 'package:wanikani_flutter/models/subject.dart';

part 'vocabulary.g.dart';

@JsonSerializable()
class Vocabulary extends Subject {
  const Vocabulary({
    required this.componentSubjectIds,
    required this.contextSentences,
    required this.partsOfSpeech,
    required this.pronunciationAudios,
    required this.readings,
    required this.readingMnemonic,
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

  factory Vocabulary.fromJson(Map<String, dynamic> json) =>
      _$VocabularyFromJson(json);
  Map<String, dynamic> toJson() => _$VocabularyToJson(this);

  /// An array of numeric identifiers for the kanji that make up this vocabulary. Note that these are the subjects that must be have passed assignments in order to unlock this subject's assignment.
  final List<int> componentSubjectIds;

  /// A collection of context sentences. See table below for the object structure.
  final List<ContextSentence> contextSentences;

  /// Parts of speech.
  final List<String> partsOfSpeech;

  /// A collection of pronunciation audio. See table below for the object structure.
  final List<PronunciationAudio> pronunciationAudios;

  /// Selected readings for the vocabulary. See table below for the object structure.
  final List<ContextSentence> readings;

  /// The subject's reading mnemonic.
  final String readingMnemonic;
}

@JsonSerializable()
class ContextSentence {
  const ContextSentence({
    required this.en,
    required this.ja,
  });

  factory ContextSentence.fromJson(Map<String, dynamic> json) =>
      _$ContextSentenceFromJson(json);
  Map<String, dynamic> toJson() => _$ContextSentenceToJson(this);

  /// English translation of the sentence
  final String en;

  /// Japanese context sentence
  final String ja;
}

@JsonSerializable()
class PronunciationAudio {
  const PronunciationAudio({
    required this.url,
    required this.contentType,
    required this.metadata,
  });

  factory PronunciationAudio.fromJson(Map<String, dynamic> json) =>
      _$PronunciationAudioFromJson(json);
  Map<String, dynamic> toJson() => _$PronunciationAudioToJson(this);

  /// The location of the audio.
  final String url;

  /// The content type of the audio. Currently the API delivers audio/mpeg and audio/ogg.
  final String contentType;

  /// Details about the pronunciation audio. See table below for details.
  final PronunciationAudioMetadata metadata;
}

@JsonSerializable()
class PronunciationAudioMetadata {
  const PronunciationAudioMetadata({
    required this.gender,
    required this.sourceId,
    required this.pronunciation,
    required this.voiceActorId,
    required this.voiceActorName,
    required this.voiceDescription,
  });

  factory PronunciationAudioMetadata.fromJson(Map<String, dynamic> json) =>
      _$PronunciationAudioMetadataFromJson(json);
  Map<String, dynamic> toJson() => _$PronunciationAudioMetadataToJson(this);

  /// The gender of the voice actor.
  final String gender;

  /// A unique ID shared between same source pronunciation audio.
  final int sourceId;

  /// Vocabulary being pronounced in kana.
  final String pronunciation;

  /// A unique ID belonging to the voice actor.
  final int voiceActorId;

  /// Humanized name of the voice actor.
  final String voiceActorName;

  /// Description of the voice.
  final String voiceDescription;
}
