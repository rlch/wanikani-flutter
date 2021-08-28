import 'package:json_annotation/json_annotation.dart';
import 'package:wanikani_flutter/data/models/subject.dart';
import 'package:wanikani_flutter/domain/entities/vocabulary.dart';

part 'vocabulary.g.dart';

@JsonSerializable()
class VocabularyModel extends Vocabulary implements SubjectModel {
  const VocabularyModel({
    required this.contextSentences,
    required this.pronunciationAudios,
    required this.readings,
    required this.auxiliaryMeanings,
    required this.meanings,
    required List<int> componentSubjectIds,
    required List<String> partsOfSpeech,
    required String readingMnemonic,
    required DateTime createdAt,
    required String documentUrl,
    required int lessonPosition,
    required int level,
    required String meaningMnemonic,
    required String slug,
    required int spacedRepetitionSystemId,
    DateTime? hiddenAt,
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
          readings: readings,
          contextSentences: contextSentences,
          pronunciationAudios: pronunciationAudios,
          partsOfSpeech: partsOfSpeech,
          componentSubjectIds: componentSubjectIds,
          readingMnemonic: readingMnemonic,
        );

  factory VocabularyModel.fromJson(Map<String, dynamic> json) =>
      _$VocabularyModelFromJson(json);
  Map<String, dynamic> toJson() => _$VocabularyModelToJson(this);

  @override
  final List<ContextSentenceModel> contextSentences;
  @override
  final List<PronunciationAudioModel> pronunciationAudios;
  @override
  final List<ContextSentenceModel> readings;
  @override
  final List<AuxiliaryMeaningModel> auxiliaryMeanings;
  @override
  final List<MeaningModel> meanings;
}

@JsonSerializable()
class ContextSentenceModel extends ContextSentence {
  const ContextSentenceModel({
    required String en,
    required String ja,
  }) : super(en: en, ja: ja);

  factory ContextSentenceModel.fromJson(Map<String, dynamic> json) =>
      _$ContextSentenceModelFromJson(json);
  Map<String, dynamic> toJson() => _$ContextSentenceModelToJson(this);
}

@JsonSerializable()
class PronunciationAudioModel extends PronunciationAudio {
  const PronunciationAudioModel({
    required this.metadata,
    required String url,
    required String contentType,
  }) : super(
          url: url,
          contentType: contentType,
          metadata: metadata,
        );

  factory PronunciationAudioModel.fromJson(Map<String, dynamic> json) =>
      _$PronunciationAudioModelFromJson(json);
  Map<String, dynamic> toJson() => _$PronunciationAudioModelToJson(this);

  @override
  final PronunciationAudioMetadataModel metadata;
}

@JsonSerializable()
class PronunciationAudioMetadataModel extends PronunciationAudioMetadata {
  const PronunciationAudioMetadataModel({
    required String gender,
    required int sourceId,
    required String pronunciation,
    required int voiceActorId,
    required String voiceActorName,
    required String voiceDescription,
  }) : super(
          gender: gender,
          sourceId: sourceId,
          pronunciation: pronunciation,
          voiceActorId: voiceActorId,
          voiceActorName: voiceActorName,
          voiceDescription: voiceDescription,
        );

  factory PronunciationAudioMetadataModel.fromJson(Map<String, dynamic> json) =>
      _$PronunciationAudioMetadataModelFromJson(json);
  Map<String, dynamic> toJson() =>
      _$PronunciationAudioMetadataModelToJson(this);
}
